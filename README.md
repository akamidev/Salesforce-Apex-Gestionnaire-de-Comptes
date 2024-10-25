# Salesforce Apex Gestionnaire de Comptes 🚀

## Vue d'Ensemble ✨
Ce projet démontre une **classe Apex** qui permet de gérer les objets **Account** dans Salesforce avec des opérations CRUD (Create, Read, Update, Delete). Il inclut également un **trigger personnalisé** pour automatiser certaines actions lors de la création d’un contact. Ce projet est une excellente démonstration de la gestion des données avec Apex, des triggers et des tests unitaires.

---

## Fonctionnalités 🛠️
- **Gestion des Comptes (CRUD)** : Crée, modifie, met à jour et supprime des comptes dans Salesforce.
- **Trigger de Bienvenue** : Un trigger Apex personnalisé envoie automatiquement un e-mail de bienvenue lors de la création d'un nouveau contact.
- **Test Unitaire** : Les classes de test sont incluses pour valider le bon fonctionnement du code.

---

## Comment Utiliser 🔧
### Prérequis 📋
- Un **compte Salesforce Developer** actif.
- **Salesforce CLI** installé sur votre machine.

### Étapes d'installation 🚀
1. Clonez ce dépôt :
    ```bash
    git clone https://github.com/votre-nom-utilisateur/gestionnaire-de-comptes-apex.git
    cd gestionnaire-de-comptes-apex
    ```

2. Déployez le code dans votre org Salesforce :
    ```bash
    sfdx force:source:deploy -p force-app
    ```

3. Exécutez les tests pour valider le bon fonctionnement :
    ```bash
    sfdx force:apex:test:run --resultformat human
    ```

---

## Structure du Projet 🗂️
- `src/classes` : Contient les classes Apex pour la gestion des comptes.
- `src/triggers` : Contient le trigger personnalisé qui envoie un e-mail de bienvenue.
- `src/tests` : Contient les classes de test pour vérifier que tout fonctionne correctement.

---

## Exemples de Code 🔍

### Classe Apex pour la Gestion des Comptes
```apex
public class AccountManager {
    public static Account createAccount(String name) {
        Account acc = new Account(Name = name);
        insert acc;
        return acc;
    }

    public static void updateAccount(Id accountId, String newName) {
        Account acc = [SELECT Id, Name FROM Account WHERE Id = :accountId];
        acc.Name = newName;
        update acc;
    }
    
    public static void deleteAccount(Id accountId) {
        Account acc = [SELECT Id FROM Account WHERE Id = :accountId];
        delete acc;
    }

    public static Account getAccount(Id accountId) {
        return [SELECT Id, Name FROM Account WHERE Id = :accountId];
    }
}
