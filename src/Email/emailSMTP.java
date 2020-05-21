package Email;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class emailSMTP {

   public String sendAuthenticationEmail(String email) {
      String serverAcc = "edelia1712";
      String serverPass = "ss#";
      String serverHost = "smtp.gmail.com";
      int serverPort = 465;
      String number = RandomNum();
      
      String to = email;
      String from = "edelia1712@gmail.com";
      String subject = "안녕하세요. 이델리아입니다.";
      String message = "<h1><center>WELCOME EDELIA CAFE</center></h1><br />";
      message = message.concat("<center><h2>MAIL AUTHENTICATION NUMBER : </h2><h2>"+ number +"<center></h2><p>");
      message = message.concat("<h4><center>Thanks for Using our EDELIA CAFE.<center></h4><br />");
      
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
      return number;
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