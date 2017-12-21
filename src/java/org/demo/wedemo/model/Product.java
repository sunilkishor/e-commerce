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
 * @author Admin
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Product {
private static long serialVersionUID=1L;
    private int id;
    
    private String name;
    private String sdate;
    private String edate;
    private String company;
    private String mgf;
    

}
