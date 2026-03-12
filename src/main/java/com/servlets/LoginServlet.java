//package servlets;
//
//import java.io.IOException;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.*;
//
//import dao.UserDAO;
//import model.User;
//
//@WebServlet("/LoginServlet")
//public class LoginServlet extends HttpServlet {
//
// protected void doPost(HttpServletRequest request,
//                       HttpServletResponse response)
//                       throws ServletException, IOException {
//
//     String email = request.getParameter("email");
//     String password = request.getParameter("password");
//
//     try {
//
//         String hashed = Integer.toHexString(password.hashCode());
//
//         UserDAO dao = new UserDAO();
//
//         User user = dao.loginUser(email, hashed);
//
//         if (user != null) {
//
//             HttpSession session = request.getSession();
//
//             session.setAttribute("user", user.getName());
//
//             response.sendRedirect("dashboard.jsp");
//
//         } else {
//
//             response.sendRedirect("login.jsp?error=Invalid Credentials");
//
//         }
//
//     } catch (Exception e) {
//         e.printStackTrace();
//     }
// }
//}