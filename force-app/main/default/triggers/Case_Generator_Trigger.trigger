trigger Case_Generator_Trigger on Case_Generator__e (after insert) {
    Case_Generator_Trigger_Handler.generateCases(Trigger.new);
}