public class AccountProcessor {
    @future
    public static void countContacts(List<Id> accountsIds) {
        List<Account> accounts = [select name from Account where Id in :accountsIds];
        for(Account account : accounts) {
            Integer contactcount = [Select COUNT() from Contact where AccountId = :account.Id];
            account.Number_Of_Contacts__c = contactcount;
            update account;
        }
        

    }
}
