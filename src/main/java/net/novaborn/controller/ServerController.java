package net.novaborn.controller;

import net.novaborn.config.ServerConfig;
import net.novaborn.pop.server.PopServer;
import net.novaborn.smtp.server.SmtpServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ServerController {
    @Autowired
    SmtpServer smtpServer;
    @Autowired
    PopServer popServer;
    @Autowired
    ServerConfig serverConfig;
    @RequestMapping("SmtpServerRun")
    public void SmtpServerRun() throws Exception {
        smtpServer.startupServer();
    }

    @RequestMapping("SmtpServerStop")
    public void SmtpServerStop() throws Exception {
        smtpServer.shutdownServer();
    }

    @RequestMapping("getSmtpStatus")
    public boolean getSmtpStatus() throws Exception {
       return smtpServer.getSEVER_STATUS();
    }


    @RequestMapping("PopServerRun")
    public void PopServerRun() throws Exception {
        popServer.startupServer();
    }

    @RequestMapping("PopServerStop")
    public void PopServerStop() throws Exception {
       popServer.shutdownServer();
    }

    @RequestMapping("getPopStatus")
    public boolean getPopStatus() throws Exception {
        return popServer.getSEVER_STATUS();
    }

    @GetMapping("setSmtpPort")
    public void setSmtpPort(int port){
        serverConfig.setSmtpport(port);
    }

    @GetMapping("setPopPort")
    public void setPopPort(int port){
        serverConfig.setPopport(port);
    }

    @GetMapping("setHostName")
    public void setHostName(String hostname){
        serverConfig.setHostname(hostname);
    }
}
