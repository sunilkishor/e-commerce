/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.demo.webdemo.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.demo.webdemo.dao.Product1Dao;
import org.demo.wedemo.model.Product;
import org.demo.wedemo.model.Product1;


@WebServlet({"/index","/personal","/menu","/saveProduct1"})
public class IndexController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String contextPath=request.getContextPath();
       
       String realPath=request.getRequestURI();
       if(request.getRequestURI().equals(contextPath+"/index")){
              RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
              rd.forward(request, response);
              
       }
       else if(request.getRequestURI().equals(contextPath+"/personal")){
              RequestDispatcher rd=request.getRequestDispatcher("Admin/personal-info.jsp");
              rd.forward(request, response);
        
   rd.forward(request, response);

       }else if(request.getRequestURI().equals(contextPath+"/menu")){
              RequestDispatcher rd=request.getRequestDispatcher("/Admin/Menu.jsp");
              rd.forward(request, response);
        
   rd.forward(request, response);

   

}  
       
    }
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String contextPath=request.getContextPath();
    if(request.getRequestURI().equals(contextPath+"/saveProduct1")){
        String name=request.getParameter("name");
        long  price=Long.parseLong(request.getParameter("price"));
        String tags=request.getParameter("tags");
        Product1 product=new Product1();
        product.setName(name);  
        product.setPrice(price);
        product.setTag(tags);
        Product1Dao p=new Product1Dao();
        String result=p.insert(product); 
        
        request.setAttribute("result",result);
        RequestDispatcher rd=request.getRequestDispatcher("product.jsp");
        rd.forward(request, response);
          
        
        
    }}
    }