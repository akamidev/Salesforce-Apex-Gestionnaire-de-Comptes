public class ContactWelcomeHandler {
    public static void handleAfterInsert(List<Contact> newContacts) {
        // Placez ici la logique que vous auriez mise dans le trigger
        for (Contact contact : newContacts) {
            // Exemple de logique
            System.debug('Bienvenue ' + contact.FirstName + ' ' + contact.LastName);
        }
    }
}