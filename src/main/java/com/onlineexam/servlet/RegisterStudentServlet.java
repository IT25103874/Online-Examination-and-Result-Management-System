package com.onlineexam.servlet;
import java.io.IOException;
import java.sql.*;

import com.example.utill.DBConnection;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/registerStudent")
//register servlet
public class RegisterStudentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,

                          HttpServletResponse response)

            throws ServletException, IOException {

        String name = request.getParameter("full_name");

        String email = request.getParameter("email");

        String program = request.getParameter("program");

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(

                    "INSERT INTO students(full_name, email, program) VALUES (?, ?, ?)"

            );

            ps.setString(1, name);

            ps.setString(2, email);

            ps.setString(3, program);

            ps.executeUpdate();

            response.getWriter().println("Student Registered!");

        } catch(Exception e){

            e.printStackTrace();

        }

    }

}

