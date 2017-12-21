/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.demo.webdemo.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class DBConnection {
    private static Logger logger =Logger.getLogger(DBConnection.class.getName());
    public static Statement getConnection(){
        try {
            Class.forName("org.postgresql.Driver");
        } catch (Exception e) {
            logger.log(Level.SEVERE,"Driver not loaded");
        }
        Connection con=null;
             Statement st=null;
             try {
            con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/testdb","postgres","kabita123");
            
        } catch (Exception e) {
            logger.log(Level.SEVERE,e.toString());
        
        }try {
            st=con.createStatement();
            
        } catch (Exception e) {
            logger.log(Level.WARNING,e.toString());
        }
             
             
        return st;
    
    }
    
    
}
