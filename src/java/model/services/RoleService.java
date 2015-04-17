/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.services;

import java.util.List;
import model.domain.Role;

/**
 *
 * @author Bert
 */
public interface RoleService {
    public List<Role> getAllRoles();
    public Role findRoleById(int id);
}
