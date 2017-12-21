/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.demo.webdemo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.demo.webdemo.dbconnection.DBConnection;
import org.demo.wedemo.model.Product1;

/**
 *
 * @author sunil
 */
public class Product1Dao {
    private static Logger logger=Logger.getLogger(Product1Dao.class.getName());
    public String insert(Product1 p){
        
         String sql="insert into product1(name,price,tag) values('"+p.getName()+"','"+p.getPrice()+"','"+p.getTag()+"')";
         try{ 
             Statement st=DBConnection.getConnection();
            st.execute(sql);
            logger.log(Level.INFO,"data is inserted sucessfully");
            return "success";
        } catch (Exception e) {
        logger.log(Level.SEVERE,"data is not inserted"+e);
        return "failure";
        
        
        
        
        
        
        }
    }
    
}
