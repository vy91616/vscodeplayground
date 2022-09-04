trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
    List<Task> tasks = new List<Task>();
    for(Opportunity a: [select Id from Opportunity where Id In :Trigger.new AND StageName = 'Closed Won']){
        tasks.add(new Task(Subject = 'Follow up Test Task', WhatId = a.Id));
    }
    if(tasks.size() > 0){
        insert Tasks;

}}