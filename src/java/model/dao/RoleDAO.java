/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.util.List;
import model.domain.Role;

/**
 *
 * @author Bert
 */
public interface RoleDAO {
    public void addRole(Role role);
    public void updateRole(Role role);
    public <T> List<T> getAllRoles();
    public void removeRole(Role role);
    public Role findRoleById(int id);
}
