/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.demo.wedemo.model;

import java.io.Serializable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author sunil
 */
@NoArgsConstructor
@AllArgsConstructor
@Data  // get and setter as well toString() menthod

public class Product1 implements Serializable {
private static long serialVersionUID=1L;

private String name;
private long price;
private String tag; 


    }

    

