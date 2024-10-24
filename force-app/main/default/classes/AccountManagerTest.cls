@IsTest
public class AccountManagerTest {

    @IsTest
    static void testCreateAccount() {
        Test.startTest();
        Account acc = AccountManager.createAccount('Test Account');
        System.assertNotEquals(null, acc.Id, 'Le compte doit être créé avec succès');
        Test.stopTest();
    }

    @IsTest
    static void testUpdateAccount() {
        Account acc = AccountManager.createAccount('Test Account');
        Test.startTest();
        AccountManager.updateAccount(acc.Id, 'Updated Account');
        Account updatedAcc = [SELECT Name FROM Account WHERE Id = :acc.Id];
        System.assertEquals('Updated Account', updatedAcc.Name, 'Le nom du compte doit être mis à jour');
        Test.stopTest();
    }

    @IsTest
    static void testDeleteAccount() {
        Account acc = AccountManager.createAccount('Test Account');
        Test.startTest();
        AccountManager.deleteAccount(acc.Id);
        List<Account> accList = [SELECT Id FROM Account WHERE Id = :acc.Id];
        System.assertEquals(0, accList.size(), 'Le compte doit être supprimé');
        Test.stopTest();
    }

    @IsTest
    static void testGetAccount() {
        Account acc = AccountManager.createAccount('Test Account');
        Test.startTest();
        Account retrievedAcc = AccountManager.getAccount(acc.Id);
        System.assertEquals(acc.Id, retrievedAcc.Id, 'Le compte récupéré doit correspondre');
        Test.stopTest();
    }
}
