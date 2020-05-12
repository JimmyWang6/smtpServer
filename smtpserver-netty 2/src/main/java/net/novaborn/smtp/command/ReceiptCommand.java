package net.novaborn.smtp.command;
import net.novaborn.comm.SpringContextHolder;
import net.novaborn.config.ServerConfig;
import net.novaborn.smtp.server.*;
import net.novaborn.util.EmailUtils;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.IOException;
import java.util.Locale;


public class ReceiptCommand extends BaseCommand {
    ServerConfig serverConfig = SpringContextHolder.getBean("serverConfig");
    public ReceiptCommand() {
        super("RCPT");
    }
    /**
     *
     */

    @Override
    public SmtpSession execute(String commandString, SmtpSession smtpSession) throws IOException {

        if (!smtpSession.isMailTransactionInProcess()) {
            smtpSession.Write("503 5.5.1 Error: need MAIL command\r\n");
            return smtpSession;
        }
        else if (smtpSession.getEmailModel().getTo().size() >= serverConfig.getMaxRecipients()) {
                smtpSession.Write("452 Error: too many recipients\r\n");
            return smtpSession;
        }

        String args = this.getArgPredicate(commandString);
        if (!args.toUpperCase(Locale.ENGLISH).startsWith("TO:")) {
            smtpSession.Write(
                    "501 Syntax: RCPT TO: <address>  Error in parameters: \""
                            + args + "\"\r\n");
            return smtpSession;
        }
        String emailAddress = EmailUtils.extractEmailAddress(args, 3);
        if (!EmailUtils.isValidEmailAddress(emailAddress))
        {
            smtpSession.Write("553 <" + emailAddress + "> Invalid email address.\r\n");
            return  smtpSession;
        }


            smtpSession.getEmailModel().getTo().add(emailAddress);
            System.out.println("now emails "+smtpSession.getEmailModel().getTo());
            smtpSession.Write("250 Ok\r\n");
            return smtpSession;
    }
}

