/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo.webdemo.test.producttest;

import junit.framework.Assert;
import org.demo.webdemo.dao.Product1Dao;
import org.demo.wedemo.model.Product1;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

/**
 *
 * @author sunil
 */
public class InsertTest {
/*
  @BeforeClass
     public static void beforeClass(){
         System.out.println("i am before class");
}
     
  @AfterClass
     public static void afterClass(){
         System.out.println("i am after class");
}
     
  @Before
     public  void before(){
         System.out.println("i am before");
}
     
  @After
     public  void after(){
         System.out.println("i am after");
}*/
    @Test 
   public void  insertIntoProductToDatabase(){
      Product1 p=new Product1();
      p.setName("mouse");
      p.setPrice(1200);
      p.setTag("accerories");
      Product1Dao pd=new Product1Dao();
        Assert.assertEquals("success", pd.insert(p));
      
   }
   @Test
   public void testofQueryStringSql(){
   String name="sunil";
   String address="putalisadak";
   long phoneNumber=1234213455l;
   
   //insert into person(name,address,phone)values('sunil','putaladadak','123456789');
       System.out.println("insert into person(name,address,pnone)values('"+name+"','"+address+"',"+phoneNumber+") ");
   }
  
}
