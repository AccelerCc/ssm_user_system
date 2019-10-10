package com.zero.controller;

import com.zero.entity.Message;
import com.zero.entity.UserMes;
import com.zero.service.RegistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Iterator;
import java.util.List;

@Controller
public class RegistController {

    @Autowired
    private RegistService registService;


    @RequestMapping("/userRegister")
    public void addUser(HttpServletResponse response, HttpServletRequest request){
        String id = request.getParameter("userid");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        int phoneNum = Integer.parseInt(phone);
        UserMes userMes = new UserMes(id,password,email,phoneNum);
        registService.addSe(userMes);
    }

    @ResponseBody
    @RequestMapping(value = "/idCheck",method = RequestMethod.POST)
    public String checkName(HttpServletRequest request){
        String id = request.getParameter("userid");
        UserMes theid = new UserMes();
        theid.setId(id);
        UserMes geted_Mes = registService.getOneUserSe(theid);
        if(geted_Mes == null){
            Message msg = new Message("yes");
            return "yes";
        }else{
            Message msg = new Message("no");
            return "no";
        }
    }

    @ResponseBody
    @RequestMapping(value = "/idCheck02",method = RequestMethod.POST)
    public String checkEmail(HttpServletRequest request){
        String email = request.getParameter("email");
        UserMes themail = new UserMes();
        themail.setEmail(email);
        UserMes geted_Mes = registService.getMesByEmail(themail);
        if(geted_Mes == null){
            Message msg = new Message("no");
            return "no";
        }else{
            Message msg = new Message("yes");
            return "yes";
        }
    }

}
