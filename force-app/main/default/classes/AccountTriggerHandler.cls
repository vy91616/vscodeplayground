public with sharing class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> acct) {
       // List<Account> accts = new List<Account>();
        for(Account a : acct){
            //Account a = new Account();
            if(a.ShippingState != a.BillingState){
                a.ShippingState = a.BillingState;
            }
        }
        //insert accts;

    }
}
