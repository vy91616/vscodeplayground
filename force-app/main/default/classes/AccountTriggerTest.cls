@isTest
private class AccountTriggerTest {
    @isTest static void TestCreatenewAccount(){
        List<Account> acct = new List<Account>();
        for (Integer i = 0; i < 200; i++) {
            Account accts= new Account (Name = 'Test Account' + i, BillingState = 'CA');
            acct.add(accts);
        }
        Test.startTest();
        insert acct;
        Test.stopTest();

        for(Account a : acct){
            System.assertEquals('CA', a.ShippingState, 'error');
        }
    }
}
