/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author angelmungg
 */
public class CustomerService {
      private final static String URL = "jdbc:mysql://localhost:3306/dbwebpro?useSSL=false";
    private final static String USER = "root";
    private final static String PASSWORD = "NAna_5807";
    private final static String INSERT_SQL = "insert into customer (customerId,userName,passWord,customerName,address,email,tel)values (? ,? ,?,?,?,?,?)";

    public void insert(Customer cus) throws SQLException {

        Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
        PreparedStatement pstm = conn.prepareStatement(INSERT_SQL);
        pstm.setInt(1, cus.getCustomerId());
        pstm.setString(2, cus.getUserName());
        pstm.setString(3, cus.getPassWord());
        pstm.setString(4, cus.getCustomerName());
        pstm.setString(5, cus.getAddress());
        pstm.setString(6, cus.getEmail());
        pstm.setString(7, cus.getTel());
        pstm.executeUpdate();

    }
}
