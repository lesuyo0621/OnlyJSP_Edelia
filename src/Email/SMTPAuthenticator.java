package Email;

import javax.mail.*;

public class SMTPAuthenticator extends Authenticator {
   public PasswordAuthentication getPasswordAuthentication () {
      return new PasswordAuthentication("edelia1712", "ss#");
   }
}