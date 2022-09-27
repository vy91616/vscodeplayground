public class MyOpportunityListController {
   @AuraEnabled
   public static List<Opportunity> fetchOpportunity(String searchKeyword ){
    List<Opportunity> returnList = new List<Opportunity>(); 
    String searchKey = String.isBlank(searchKeyword) ? '%%' : searchKeyword + '%';
    returnList = [select Id, name, AccountId,CloseDate,Amount FROM Opportunity WHERE name like :searchKey limit 15];
    return returnList;
    
   }
}
