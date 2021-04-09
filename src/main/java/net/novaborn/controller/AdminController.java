package net.novaborn.controller;

import net.novaborn.dao.UserMapper;
import net.novaborn.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * @description:
 * @author: 周世焕
 * @time: 2020-05-20 15:48
 */
@Controller
public class AdminController {
    @Autowired
    UserMapper userMapper;

    @RequestMapping(value = "login",method = RequestMethod.POST)
    public ResponseEntity<Map<String,Object>> login(HttpServletRequest request,String username, String password){
        Map<String,Object> map = new HashMap<String, Object>();
        User user = userMapper.selectAdmin(username,password);
        System.out.println(username+" " +password);
        if(user!=null){
            request.getSession().setAttribute("admin",user);
            map.put("status",200);
        }else{
            map.put("status",500);
        }
        return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
    }


}
