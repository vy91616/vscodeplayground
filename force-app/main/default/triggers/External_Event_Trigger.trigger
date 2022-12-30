trigger External_Event_Trigger on External_Event__e (after insert) {
    Case[] newCases = new Case[]{};
    for(External_Event__e event: Trigger.new){
        newCases.add(new Case(Subject = event.System__c,
                                Description = event.Message__c));
    }
    insert newCases;

}