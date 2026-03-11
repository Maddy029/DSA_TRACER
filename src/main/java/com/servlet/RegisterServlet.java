package com.servlet;

import java.io.IOException;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.dao.UserDAO;
import com.model.User;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    private static final String EMAIL_REGEX =
            "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$";

    private static final String PASSWORD_REGEX =
            "^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@#$%^&+=!]).{8,}$";

    protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        try {
            if (!Pattern.matches(EMAIL_REGEX, email)) {
                response.sendRedirect("register.jsp?error=Invalid Email");
                return;
            }
            if (!Pattern.matches(PASSWORD_REGEX, password)) {
                response.sendRedirect("register.jsp?error=Weak Password");
                return;
            }
            UserDAO dao = new UserDAO();
            if (dao.emailExists(email)) {
                response.sendRedirect("register.jsp?error=Email already exists");
                return;
            }

            String hashed = Integer.toHexString(password.hashCode());

            User user = new User(name, email, hashed);

            dao.registerUser(user);

            HttpSession session = request.getSession();
            session.setAttribute("user", name);
            session.setAttribute("email", email);

            response.sendRedirect("dashboard.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}