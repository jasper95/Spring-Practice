/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.services;

import java.util.List;
import model.dao.UserDAO;
import model.domain.User;
import model.domain.UserStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Bert
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    UserDAO userDao;
    
    @Autowired
    PasswordEncoder encoder;
    
    @Transactional
    @Override
    public void addUser(User user) {
        user.setPassword(encoder.encode(user.getPassword()));
        user.setStatus(UserStatus.ACTIVE);
        userDao.addUser(user);
    }
    
    @Transactional
    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }
    
    @Transactional
    @Override
    public List<User> listUsers() {
        return userDao.listUsers(User.class);
    }

    @Transactional
    @Override
    public void removeUser(String username) {
        userDao.removeUser(username);
    }
    
    @Transactional
    @Override
    public User getUserByUsername(String username){
        return userDao.getUserByUsername(username);
    }

    @Transactional(readOnly=true, rollbackFor=Exception.class)
    @Override
    public boolean fieldValueExists(Object value, String fieldName){
        User user = null;
        try {
            user = userDao.getUserByAttribute(value, fieldName);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (user != null)
            return true;
        return false;
    }
}