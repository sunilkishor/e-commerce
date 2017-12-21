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
public class CustomerModel {
    private static long serialVersionUID=1l;
    private int id;
    private String fanme;
    private String lname;
    private String email;
    private String phone;
    private String username;
    private String country;
    private String city;
    private String gender;
    private String birthdate;
    
    
    
}
