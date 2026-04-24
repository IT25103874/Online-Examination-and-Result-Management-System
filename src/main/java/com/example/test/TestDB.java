package com.example.test;

import com.example.utill.DBConnection;
import java.sql.Connection;

public class TestDB {

    public static void main(String[] args) {

        Connection con = DBConnection.getConnection();

        if(con != null){
            System.out.println("SUCCESS: Connected to MySQL!");
        } else {
            System.out.println("FAILED: Not connected");
        }
    }
}