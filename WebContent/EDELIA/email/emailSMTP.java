package email;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class emailSMTP {

   public String sendAuthenticationEmail(String email) {
      String serverAcc = "edelia1712";
      String serverPass = "edelia1712";
      String serverHost = "smtp.gmail.com";
      int serverPort = 465;
      String key = RandomNum();
      
      String to = email;
      String from = "edelia1712@gmail.com";
      String subject = "Share Your Hopes";
      String message = "<h1><center>Share Your Hopes</center></h1><br />";
      message = message.concat("<h4><center>Your authentication key is<center></h4>");
      message = message.concat("<h2><center>"+ key +"<center></h2><p>");
      message = message.concat("<h4><center>Have a wonderful day!<center></h4><br />");
      
      Properties props = new Properties();
      SMTPAuthenticator auth = new SMTPAuthenticator();
      Session sess = Session.getInstance(props, auth);
      
      try {
         MimeMessage msg = new MimeMessage(sess);
         msg.setContent(message, "text/html");
         msg.setSubject(subject);
         msg.setFrom(new InternetAddress(from));
         msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

         Transport transport = sess.getTransport("smtps");
         transport.connect(serverHost, serverPort, serverAcc, serverPass);
         transport.sendMessage(msg, msg.getAllRecipients());
         transport.close();
      }catch(Exception e) {
         e.printStackTrace();
      }
      return key;
   }

   public String RandomNum() {
      StringBuffer buffer = new StringBuffer();
      for(int i=0; i<=6; i++) {
         int num = (int)(Math.random() * 10);
         buffer.append(num);
      }
      return buffer.toString();
   }
   
}