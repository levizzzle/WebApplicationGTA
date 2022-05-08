package com.example.webapplicationgta;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

// This class can be used to initialize the database connection
public class DatabaseConnection {
    protected static Connection initializeDatabase()
            throws SQLException, ClassNotFoundException
    {
        // Initialize all the information regarding
        // Database Connection
        String dbDriver = "com.mysql.cj.jdbc.Driver";
        String dbURL = "jdbc:mysql:// localhost:3306/";
        // Database name to access
        String dbName = "db";
        String dbUsername = "root";
//        String dbPassword = "password";
        String dbPassword = "2810";

        Class.forName(dbDriver);
        return DriverManager.getConnection(dbURL + dbName, dbUsername, dbPassword);
    }
}
