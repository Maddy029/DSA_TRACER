package com.dao;

import java.sql.*;
import com.model.User;
import dsa_tracker.DBConnection;

public class UserDAO {

    Connection con;

    public UserDAO(){
        con=DBConnection.getConnection();
    }

    /* check if email already exists */
    public boolean emailExists(String email){

        boolean status=false;

        try{

            String query="select * from users where email=?";

            PreparedStatement ps=con.prepareStatement(query);

            ps.setString(1,email);

            ResultSet rs=ps.executeQuery();

            if(rs.next()){
                status=true;
            }

        }
        catch(Exception e){
            e.printStackTrace();
        }

        return status;
    }

    /* register user */
    public boolean registerUser(User user){

        boolean status=false;

        try{

            String query="insert into users(name,email,password) values(?,?,?)";

            PreparedStatement ps=con.prepareStatement(query);

            ps.setString(1,user.getName());
            ps.setString(2,user.getEmail());
            ps.setString(3,user.getPassword());

            int i=ps.executeUpdate();

            if(i>0){
                status=true;
            }

        }
        catch(Exception e){
            e.printStackTrace();
        }

        return status;
    }

    /* login user */
    public User loginUser(String email,String password){

        User user=null;

        try{

            String query="select * from users where email=? and password=?";

            PreparedStatement ps=con.prepareStatement(query);

            ps.setString(1,email);
            ps.setString(2,password);

            ResultSet rs=ps.executeQuery();

            if(rs.next()){

                user=new User();

                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
            }

        }
        catch(Exception e){
            e.printStackTrace();
        }

        return user;
    }
}