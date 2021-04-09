package net.novaborn.controller;

import net.novaborn.config.ServerConfig;
import net.novaborn.dao.LogMapper;
import net.novaborn.pop.server.PopServer;
import net.novaborn.smtp.server.SmtpServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
public class ServerController {
    @Autowired
    SmtpServer smtpServer;
    @Autowired
    PopServer popServer;
    @Autowired
    ServerConfig serverConfig;
    @Autowired
    LogMapper logMapper;

    @RequestMapping("SmtpServerRun")
    public void SmtpServerRun(HttpServletRequest request) throws Exception {
        if(request.getSession().getAttribute("admin")!=null){
            smtpServer.startupServer();
            logMapper.insertLog("Server Status","Start SMTP Server");
        }
    }

    @RequestMapping("SmtpServerStop")
    public void SmtpServerStop(HttpServletRequest request) throws Exception {
        if(request.getSession().getAttribute("admin")!=null){
            smtpServer.shutdownServer();
            logMapper.insertLog("Server Status","ShutDown SMTP Server");
        }
    }

    @RequestMapping("getSmtpStatus")
    public boolean getSmtpStatus(HttpServletRequest request) throws Exception {
        if(request.getSession().getAttribute("admin")!=null) {
            return smtpServer.getSEVER_STATUS();
        }else {
            return false;
        }
    }
    @RequestMapping("getConfig")
    public ServerConfig getServerConfig(){
        return this.serverConfig;
    }


    @RequestMapping("PopServerRun")
    public void PopServerRun(HttpServletRequest request) throws Exception {
        if(request.getSession().getAttribute("admin")!=null) {
            popServer.startupServer();
            logMapper.insertLog("Server Status","Start POP Server");
        }
    }

    @RequestMapping("PopServerStop")
    public void PopServerStop(HttpServletRequest request) throws Exception {
        if(request.getSession().getAttribute("admin")!=null) {
            popServer.shutdownServer();
            logMapper.insertLog("Server Status","ShutDown POP Server");
        }
    }

    @RequestMapping("getPopStatus")
    public boolean getPopStatus(HttpServletRequest request) throws Exception {
        if(request.getSession().getAttribute("admin")!=null) {
            return popServer.getSEVER_STATUS();
        }else {
            return false;
        }
    }
//
//    @GetMapping("setSmtpPort")
//    public void setSmtpPort(HttpServletRequest request,int port){
//            serverConfig.setSmtpport(port);
//    }
//
//    @GetMapping("setPopPort")
//    public void setPopPort(int port){
//        serverConfig.setPopport(port);
//    }
//
//    @GetMapping("setHostName")
//    public void setHostName(String hostname){
//        serverConfig.setHostname(hostname);
//    }
}
