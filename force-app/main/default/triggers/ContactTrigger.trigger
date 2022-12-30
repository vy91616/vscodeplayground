trigger ContactTrigger on Contact (after insert,after update) {
    Contact obj = new Contact();
    String fname,lname,title,emailtest;
    Id id1;
    Contact obj2 =trigger.new[0];
    if(obj2.Name != '' || obj2.Name != null){
        System.debug('trigger called');
        fname = obj2.FirstName;
        lname = obj2.LastName;
        title = obj2.Title;
        emailtest = obj2.Email;
        id1=obj2.Id;
        sendContactToExternalSystem obj1 = new SendContactToExternalSystem();
        obj1.sendcontact(fname,lname,title,emailtest);
    }


}