/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.demo.webdemo.dao;

import java.sql.Statement;
import org.demo.webdemo.dbconnection.DBConnection;
import org.demo.wedemo.model.UserModel;

/**
 *
 * @author sunil
 */
public class AddUserDao {
    public  static void insert(UserModel um){
        Statement st=DBConnection.getConnection();
       String sql="INSERT INTO adduser(name,bdate,gender,username,email,password,phone,address)VALUES('"+um.getName()+"','"+um.getBdate()+"','"+um.getGender()+"','"+um.getUsername()+"','"+um.getEmail()+"','"+um.getPassword()+"','"+um.getPhone()+"','"+um.getAddress()+"')";
        try{
        st.execute(sql);
            System.out.println("data is inserted to ");
        }catch(Exception e){
            System.out.println("data is not inserted for studentcourse"+e);
        }
        
    
    }}
