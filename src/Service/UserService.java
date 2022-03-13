/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Dao.UserDao;
import Model.User;
import java.sql.SQLException;

/**
 *
 * @author DELL
 */
public class UserService {
    private UserDao userDao;

    public UserService() {
        userDao = new UserDao();
    }
    
     public void addUser(User user){
         userDao.addUser(user);
    }
     
     public User checkUser(String email, String password) throws SQLException{
        return userDao.checkUser(email, password);
    }

    public User getUser(String email, String password) throws SQLException{
        return userDao.getUser(email, password);
    }
}

