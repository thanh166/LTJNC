/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DELL
 */
public class UserDao {
    public List<User> getAllUser() {
        List<User> users = new ArrayList<User>();

        Connection connection = Connect.getJDBCConection();
        String sql = "select * from user";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setInstitution(rs.getString("institution"));
                users.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return users;
    }
    
    public void addUser(User user) {
        Connection connection = Connect.getJDBCConection();
        String sql = " INSERT INTO user( email, password, institution)"
                + " VALUE(?,?,?) ";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, user.getEmail());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getInstitution());
            int rs = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public User getUser(String email, String password) {
        
        Connection connection = Connect.getJDBCConection();
        String sql = "select * from user where email = ? and password = ?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));     
                user.setInstitution(rs.getString("institution"));     
                return user;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public User checkUser(String email, String password) throws SQLException{
        Connection connection = Connect.getJDBCConection();
        String sql = "select * from user where email = ? and password = ?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                return user;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
