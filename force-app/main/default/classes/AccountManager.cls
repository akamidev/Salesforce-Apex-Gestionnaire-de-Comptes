public with sharing class AccountManager {
    
    // Méthode pour créer un compte
    public static Account createAccount(String name) {
        if (Schema.sObjectType.Account.isCreateable()) {
            Account acc = new Account(Name = name);
            insert acc;
            return acc;
        } else {
            throw new System.NoAccessException('Utilisateur sans autorisation de création sur les comptes.');
        }
    }

    // Méthode pour mettre à jour un compte
    public static void updateAccount(Id accountId, String newName) {
        Account acc = [SELECT Id, Name FROM Account WHERE Id = :accountId];
        if (Schema.sObjectType.Account.isUpdateable()) {
            acc.Name = newName;
            update acc;
        } else {
            throw new System.NoAccessException('Utilisateur sans autorisation de mise à jour sur les comptes.');
        }
    }

    // Méthode pour supprimer un compte
    public static void deleteAccount(Id accountId) {
        Account acc = [SELECT Id FROM Account WHERE Id = :accountId];
        if (Schema.sObjectType.Account.isDeletable()) {
            delete acc;
        } else {
            throw new System.NoAccessException('Utilisateur sans autorisation de suppression sur les comptes.');
        }
    }

    // Méthode pour récupérer un compte
    public static Account getAccount(Id accountId) {
        if (Schema.sObjectType.Account.isAccessible()) {
            return [SELECT Id, Name FROM Account WHERE Id = :accountId];
        } else {
            throw new System.NoAccessException('Utilisateur sans autorisation de lecture sur les comptes.');
        }
    }
}
