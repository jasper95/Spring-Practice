/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import model.domain.Role;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Bert
 */
@Repository("roleDao")
public class RoleDAOImpl implements RoleDAO {

    @PersistenceContext
    EntityManager em;
    
    @Override
    public void addRole(Role role) {
        em.persist(role);
    }

    @Override
    public void updateRole(Role role) {
        em.merge(role);
    }

    @Override
    public <T> List<T> getAllRoles() {
        TypedQuery<T> query = em.createQuery("from Role", (Class<T>) Role.class);
        return query.getResultList();
    }

    @Override
    public void removeRole(Role role) {
        em.remove(role);
    }

    @Override
    public Role findRoleById(int id) {
        return em.find(Role.class, id);
    }         
}
