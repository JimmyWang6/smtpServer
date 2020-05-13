package net.novaborn.controller;

import net.novaborn.Service.UserService;
import net.novaborn.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller("user")
public class UserController {
    @Autowired
    UserService userServiceImpl;
    @RequestMapping("add")
    public void add(String userName,String password,String phone,String nickName){
        userServiceImpl.add(userName,password,phone,nickName);
    }
    @RequestMapping("delete")
    public void delete(int id){
        userServiceImpl.delete(id);
    }
    @RequestMapping("delete")
    public List<User> search(String userName){
        return userServiceImpl.search(userName);
    }


    @RequestMapping("setAuthor")
    public void setAuthor(String userName,int author){
        userServiceImpl.setAuthor(userName,author);
    }
    @RequestMapping("getUserList")
    public List<User> getUserList(){
        return userServiceImpl.getUserList();
    }
}
