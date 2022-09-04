global class BatchDemo implements Database.Batchable<SObject>{
    private Integer magiNum = 0;

    global Database.QueryLocator Start(Database.BatchableContext bc){
        return Database.getQueryLocator('Select Id, Name from Account');
    }
    global void execute(Database.BatchableContext bc, List<Account> scope){
        System.debug('In the execute method');
        for(Integer i = 0;i<5;i++) {
            magiNum = i;
        }
    }
    global void finish(Database.BatchableContext bc){
        System.debug('In the finish method');
        System.debug('magiNum '+ magiNum);
    }

    
}
