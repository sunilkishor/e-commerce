/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.demo.wedemo.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author sunil
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class UserModel {
    private int id;
    private String name;
    private String bdate;
    private String gender;
    private String username;
    private String email;
   private String password;
   private String phone;
   private String address;
   
    
}
