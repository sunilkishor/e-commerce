/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.demo.webdemo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.demo.webdemo.dao.AddUserDao;
import org.demo.wedemo.model.UserModel;

/**
 *
 * @author sunil
 */
@WebServlet({"/adduser"})
public class UserController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          String contextPath=request.getContextPath();
       String realPath=request.getRequestURI();
       if(request.getRequestURI().equals(contextPath+"/adduser")){
              RequestDispatcher rd=request.getRequestDispatcher("/Admin/AddUser.jsp");
              rd.forward(request, response);
       }          

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            String name = request.getParameter("name");
            System.out.println(name);
            String bdate = request.getParameter("bdate");
            String gender = request.getParameter("gender");
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String phone=request.getParameter("phone");
            String address=request.getParameter("address");
if (request.getParameter("action").equalsIgnoreCase("save")) {
        UserModel um=new UserModel();
        um.setName(name);
        um.setBdate(bdate);
        um.setGender(gender);
        um.setUsername(username);
        um.setEmail(email);
        um.setPassword(password);
        um.setPhone(phone);
        um.setAddress(address);
        AddUserDao.insert(um);

}

    }

}
