package com.cb.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Subhankar
 */
public class DBProvider {

    private static DBProvider dbProvider = null;

    private final DBProperties db;

    public Connection getConnection() {
        Connection conn = null;

        try {
            Class.forName(db.driver);
        } catch (ClassNotFoundException ex) {
            System.err.println("Where is your MySQL JDBC Driver?");
        }

        try {
            conn = DriverManager
                    .getConnection(db.url + "" + db.name, db.usr, db.pass);

        } catch (SQLException e) {
            System.err.println("Connection Failed! Check output console");
        }

        return conn;
    }

    public static DBProvider instance() {
        if (dbProvider == null) {
            dbProvider = new DBProvider();
        }
        return dbProvider;
    }

    public DBProvider() {
        db = new DBProperties("db.properties");
    }
}
