/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Bert
 */
@Controller
public class BlogController {
    @RequestMapping(value="/dota")
    public String dota(){
        return "dota";
    }
    @RequestMapping(value="/programming")
    public String programming(){
        return "programming";
    }
    @RequestMapping(value="/beers")
    public String beers(){
        return "beers";
    }
  
}
