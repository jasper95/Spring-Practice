/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.services;

/**
 *
 * @author Bert
 */
import java.util.ArrayList;
import java.util.Collection;
import model.dao.UserDAO;
import model.domain.Role;
import model.domain.User;
import model.domain.UserStatus;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("userDetailsService")
public class UserDetailServiceImpl implements UserDetailsService {

    @Autowired
    private UserDAO userDao;

    @Override
    @Transactional(readOnly = true)
    public UserDetails loadUserByUsername(String username)
                throws UsernameNotFoundException {
        User user = userDao.getUserByUsername(username); //our own User model class
        if(user!=null){
                String password = user.getPassword();
                //additional information on the security object
                boolean enabled = user.getStatus().equals(UserStatus.ACTIVE);
                boolean accountNonExpired = user.getStatus().equals(UserStatus.ACTIVE);
                boolean credentialsNonExpired = user.getStatus().equals(UserStatus.ACTIVE);
                boolean accountNonLocked = user.getStatus().equals(UserStatus.ACTIVE);

                //Let's populate user roles
                Collection<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
                for(Role role : user.getRoles()){
                        authorities.add(new SimpleGrantedAuthority(role.getRoleName()));
                }

                //Now let's create Spring Security User object
                org.springframework.security.core.userdetails.User securityUser = new 
                                org.springframework.security.core.userdetails.User(username, 
                                password, enabled, accountNonExpired, credentialsNonExpired,
                                accountNonLocked, authorities);
                return securityUser;
        }else{
                throw new UsernameNotFoundException("User Not Found!!!");
        }
    }
}