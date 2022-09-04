global class ApexStatefulldemo implements Database.Batchable<SObject>, Database.Stateful{
    private Integer magiNum = 0;

    global Database.QueryLocator Start(Database.BatchableContext bc){
        return Database.getQueryLocator('Select Id, Name from Account Limit 100');
    }
    global void execute(Database.BatchableContext bc, List<Account> scope){
        System.debug('In the execute method');
        for(Integer i = 0;i<5;i++) {
            magiNum++;
        }
    }
    global void finish(Database.BatchableContext bc){
        System.debug('In the finish method');
        System.debug('magiNum '+ magiNum);
    }

    
}
