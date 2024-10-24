public class ContactService {
    public static void sendWelcomeEmail(Contact con) {
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setToAddresses(new String[]{con.Email});
        mail.setSubject('Bienvenue!');
        mail.setPlainTextBody('Bienvenue à bord, ' + con.FirstName);
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
    }
}
