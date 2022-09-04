public with sharing class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String lname) {
            List<List<SObject>> searchlist = [FIND :lname IN ALL FIELDS RETURNING Contact(FirstName, LastName),Lead(FirstName, LastName)]; 
            return searchlist;
    }
}
