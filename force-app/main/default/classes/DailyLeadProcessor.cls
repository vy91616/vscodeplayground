public class DailyLeadProcessor implements Schedulable{
    public void execute(SchedulableContext ctx) {
        List<Lead> llist = [Select Id,LeadSource from Lead where LeadSource = null];
        if(!llist.isEmpty()) {
            for (Lead i : llist) {
                i.LeadSource = 'Dreamforce';
            }
            update llist;
        }
        
    }

    
}
