public with sharing class Case_Generator_Trigger_Handler {
    public static void generateCases(Case_Generator__e[] newCaseGenerators) {
        Case_Generator_Setting__mdt typeSetting  = [select Default_Value__c from Case_Generator_Setting__mdt where Label =:'Type' limit 1];
        Case[] casesToInsert = new Case[]{};
        for(Case_Generator__e generator : newCaseGenerators){
            casesToInsert.add(new Case(Subject =  generator.Subject__c, Description = generator.Description__c, Type = typeSetting.Default_Value__c));
        }
        insert casesToInsert;
    }
}
