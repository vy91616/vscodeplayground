// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

Account singleAccount = new Account(Name='Testing bulking');
insert singleAccount;

List<Account> accounts = new List<Account>();
for(Integer i = 0; i < 100; i++){
    accounts.add(new Account(Name='multiple accounts testing account ' + i));

}
insert accounts;