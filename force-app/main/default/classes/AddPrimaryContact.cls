public with sharing class AddPrimaryContact implements Queueable {
    private Contact c;
    private String state;
    public AddPrimaryContact(Contact c, String state){
        this.c = c;
        this.state = state;
        
    }
    public void execute(QueueableContext context){
        List<Account> accounts =  [SELECT ID, Name ,(Select id,FirstName,LastName from contacts ) FROM ACCOUNT WHERE BillingState = :state LIMIT 200];
        List<Contact> contacts =  new List<Contact>();
        for (Account account : accounts) {
            Contact cont = c.clone(false, false, false, false);
            cont.AccountId = account.Id;
            contacts.add(cont);
        }
        if(contacts.size() > 0){
            insert contacts;
        }
    }

}
