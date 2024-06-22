package com.helper;

import java.sql.*;

public class ConnectionProvider {
	private static Connection con;

    public static Connection getConnection() {
        try {

            if (con == null) {
                //driver class load
                Class.forName("com.mysql.cj.jdbc.Driver");

                //create a connection..
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRSM", "root", "shakti7723");

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }

}

//                     Write this in index.jsp 
// <% Connection con = ConnectionProvider.getConnection();  %>
// <h1><%= con %></h1>
