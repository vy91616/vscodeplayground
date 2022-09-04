trigger Contact_creation_mail on Contact (after insert) {
    if(trigger.isInsert){
        Integer recordCount = Trigger.New.size();
        EmailManager.sendMail('vy91616@gmail.com', 'Contact creation', recordCount+ ' contact were inserted');

    }

}