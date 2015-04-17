/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import java.beans.PropertyEditorSupport;
import javax.servlet.http.HttpServletRequest;
import model.domain.User;
import model.services.RoleService;
import model.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ModelAttribute;
import javax.validation.Valid;
import model.domain.Role;
import org.springframework.orm.jpa.JpaOptimisticLockingFailureException;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;



/**
 *
 * @author Bert
 */
@Controller
public class UsersController {
    @Autowired
    UserService userService;
    @Autowired
    RoleService roleService;
    
    @Autowired
    protected AuthenticationManager authenticationManager;
    static final String BINDING_RESULT_NAME = "org.springframework.validation.BindingResult.user";

    
    @InitBinder
    protected void initBinder(WebDataBinder binder){
        binder.registerCustomEditor(Role.class, new CustomRoleEditor());
    }
    
    
    private class CustomRoleEditor extends PropertyEditorSupport{
        @Override
        public void setAsText(String text) throws IllegalArgumentException {
            setValue(roleService.findRoleById(Integer.valueOf(text)));
        }      
    }
    
    @RequestMapping(value="/register", method=RequestMethod.GET)
    public String add(ModelMap model){
        if(!model.containsAttribute(BINDING_RESULT_NAME)) {
            model.addAttribute("user", new User());
        }
        model.addAttribute("roles",roleService.getAllRoles());
        return "user/add";
    }
    
   
    @RequestMapping(value="/add", method=RequestMethod.POST)
    public String processAddUserForm(@ModelAttribute("user") @Valid User user,  
                                     BindingResult result,RedirectAttributes redirectAttributes,
                                     HttpServletRequest request){
        if (result.hasErrors()){
            redirectAttributes.addFlashAttribute(BINDING_RESULT_NAME, result);
            return "redirect:/register";
        }
        try{
            userService.addUser(user);
        }catch(JpaOptimisticLockingFailureException e){
            result.reject("","This record was modified by another user. Try refreshing the page.");
        }
        authenticateUserAndSetSession(user, request);
        return "redirect:/";
    }
    
    private void authenticateUserAndSetSession(User user, HttpServletRequest request) {
        String username = user.getUsername();
        String password = user.getPassword();
        UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(username, password);

        // generate session if one doesn't exist
        request.getSession();

        token.setDetails(new WebAuthenticationDetails(request));
        Authentication authenticatedUser = authenticationManager.authenticate(token);
        SecurityContextHolder.getContext().setAuthentication(authenticatedUser);
    }
    
    @RequestMapping(value="/login", method=RequestMethod.GET)
    public String login(){
        return "user/login";
    }
}