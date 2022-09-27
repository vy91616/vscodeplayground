// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

list<id> IDList= new list<id>();
IDList.add('0015j00000Z9M0UAAV');
AccountProcessor.countContacts(IDList);