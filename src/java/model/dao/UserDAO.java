/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.util.List;
import model.domain.User;

/**
 *
 * @author Bert
 */
public interface UserDAO {
    public void addUser(User user);
    public void updateUser(User user);
    public <T> List<T> listUsers(Class<T> clazz);
    public User getUserByUsername(String username);
    public void removeUser(String username);
    public User getUserByAttribute(Object attribute, String fieldName) throws Exception;
}