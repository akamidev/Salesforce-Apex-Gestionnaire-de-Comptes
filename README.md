# Salesforce Apex Gestionnaire de Comptes ⚙️

![License](https://img.shields.io/badge/License-MIT-blue.svg)
![Java](https://img.shields.io/badge/Java-17-orange.svg)
![Apex](https://img.shields.io/badge/Salesforce-Apex-00A1E0.svg)
![Status](https://img.shields.io/badge/Status-Complete-success.svg)
![GitHub contributors](https://img.shields.io/github/contributors/akamidev/Salesforce-Apex-Gestionnaire-de-Comptes)
![Stars](https://img.shields.io/github/stars/akamidev/Salesforce-Apex-Gestionnaire-de-Comptes)
![Forks](https://img.shields.io/github/forks/akamidev/Salesforce-Apex-Gestionnaire-de-Comptes)

## 📝 Vue d'Ensemble

Ce projet présente une **classe Apex** qui gère les objets `Account` dans Salesforce. Les opérations CRUD (Create, Read, Update, Delete) sont implémentées ainsi qu’un **trigger** qui envoie un e-mail de bienvenue lorsqu’un nouveau contact est ajouté.

---

## ✨ Fonctionnalités

- 🌐 **Gestion des comptes** (CRUD)
- 📧 **Trigger** pour envoyer automatiquement un e-mail lors de la création d'un contact
- ✅ **Classes de Test** pour valider les opérations CRUD
- 📊 **Utilisation efficace de Salesforce** pour gérer les données clients

---

## 🚀 Comment Utiliser

1. **Cloner ce dépôt** :
    ```bash
    git clone https://github.com/akamidev/Salesforce-Apex-Gestionnaire-de-Comptes.git
    ```

2. **Déployer le projet** dans votre org Salesforce :
    ```bash
    sfdx force:source:deploy --sourcepath src/
    ```

3. **Exécuter les tests unitaires** :
    ```bash
    sfdx force:apex:test:run --classnames AccountManagerTest
    ```

---

## 📂 Structure du Projet

```bash
src/
├── classes/
│   ├── AccountManager.cls         # Gestionnaire des comptes
│   ├── ContactService.cls         # Service pour l'envoi d'e-mails de bienvenue
│   └── ContactWelcomeHandler.cls  # Gestionnaire d'événements pour les contacts
├── triggers/
│   └── ContactWelcomeTrigger.trigger  # Trigger d'envoi d'e-mails de bienvenue
└── tests/
    └── AccountManagerTest.cls     # Tests unitaires

```

## Auteurs 👤

AKAMI Mehdi - [Mon Profil GitHub](https://github.com/akamidev)

## Licence 📄

Ce projet est sous licence MIT. Consultez le fichier [LICENSE](https://github.com/akamidev/Salesforce-Apex-Gestionnaire-de-Comptes/blob/master/LICENSE) pour plus de détails.
