trigger AddRelatedRecord on Account (after insert,after update  ) {
    List<Opportunity> oppList = new List<Opportunity>();
    for(Account a:[select Id,Name from Account where Id IN :trigger.new and Id not in (select AccountId from Opportunity)]) {
        oppList.add(new Opportunity(Name=a.Name + ' Opportunity',
                                   StageName='Prospecting',
                                   CloseDate=System.today().addMonths(1),
                                   AccountId=a.Id)); 
    }
    if (oppList.size() > 0) {
        insert oppList;
    }
}