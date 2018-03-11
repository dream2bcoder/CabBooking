package com.cb.db;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Subhankar
 */
public class DBProperties {

    public final String driver;
    public final String name;
    public final String url;
    public final String usr;
    public final String pass;

    public DBProperties(final String filename) {
        
        Properties props = loadProperties(filename);
        driver = props.getProperty("db.driver");
        name = props.getProperty("db.name");
        url = props.getProperty("db.url");
        usr = props.getProperty("db.usr");
        pass = props.getProperty("db.pass");
        
        /*
        driver = "com.mysql.jdbc.Driver";
        name = "cb";
        url = "jdbc:mysql://localhost:3306/";
        usr = "root";
        pass = "";
        */
//        System.out.println(driver + ", " + url + "" + name + ", " + usr + ", " + pass);
    }

    private Properties loadProperties(final String filename) {
        Properties props = new  Properties();
        try (InputStream fis = Thread.currentThread().getContextClassLoader().getResourceAsStream("/resources/" + filename)) {
            props.load(fis);
        } catch (IOException ex) {
            
            Logger.getLogger(DBProvider.class.getName()).log(Level.SEVERE, null, ex);
        }
        return props;
    }
}
