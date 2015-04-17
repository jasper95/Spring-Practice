/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.services;

import java.util.List;
import model.dao.RoleDAO;
import model.domain.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Bert
 */
@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    RoleDAO roleDao;
    @Transactional(readOnly=true)
    @Override
    public List<Role> getAllRoles() {
        return roleDao.getAllRoles();
    }
    
    @Transactional(readOnly=true)
    @Override
    public Role findRoleById(int id) {
        return roleDao.findRoleById(id);
    }
    
}
