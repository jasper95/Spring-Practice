/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.services;

import java.util.List;
import model.domain.User;
import model.validator.utils.FieldValueExists;

/**
 *
 * @author Bert
 */
public interface UserService extends FieldValueExists {
    public void addUser(User user);
    public void updateUser(User user);
    public <T> List<T> listUsers();
    public void removeUser(String username);
    public User getUserByUsername(String username);
}
