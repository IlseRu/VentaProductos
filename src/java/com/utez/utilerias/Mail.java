package com.utez.utilerias;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mail {
    public boolean enviarCorreoRecuperacion(String correoDestino, String contrasenia) {

        try {
            // Propiedades de la conexión
            Properties props = new Properties();
            props.setProperty("mail.smtp.host", "smtp.gmail.com");
            props.setProperty("mail.smtp.starttls.enable", "true");
            props.setProperty("mail.smtp.port", "587");
            props.setProperty("mail.smtp.user", "20173ti160@utez.edu.mx");
            props.setProperty("mail.smtp.auth", "true");
            props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
            
            
            // Preparamos la sesion
            Session session = Session.getInstance(props,
                    new javax.mail.Authenticator() {
                        protected PasswordAuthentication getPasswordAuthentication() {
                            return new PasswordAuthentication("20173ti160@utez.edu.mx", "170599ilse");
                        }
                    });

            // Construimos el mensaje
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("20173ti160@utez.edu.mx"));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(correoDestino));
            String body = "<p>Hola, tu contrasenia es: "+contrasenia+"</p>";
            message.setSubject("Recuperacion de contrasenia", "ISO-8859-1");
            message.setContent(body, "text/html");
            
            Transport.send(message);
            return true;
        } catch (MessagingException e) {
            return false;
        }
    }
}
