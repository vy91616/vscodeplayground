public class AccountUtils  {
    public static list<Account> accountsByState (String state){
        list<Account> act=[select ID, Name from account where BillingState=:state];
        return act;
        }
}