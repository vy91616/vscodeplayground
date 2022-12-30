trigger AccountTrigger on Account (before insert, after insert, before update,after delete) {
    // System.debug('inserted record'+Trigger.new);
    if(Trigger.isBefore && Trigger.isInsert){
        for (Account accRec : Trigger.new) {
            if(accRec.AnnualRevenue < 1000){
                accRec.addError('AnnualRevenue is  less than 1000');
            }
            System.debug('accrec '+accRec);
            accRec.ShippingCity = accRec.BillingCity;
            accRec.ShippingCountry = accRec.BillingCountry;
            accRec.ShippingState= accRec.BillingState;
            accRec.ShippingStreet = accRec.BillingStreet;
            accRec.ShippingPostalCode = accRec.BillingPostalCode;


        }
    }

    if (Trigger.isAfter && Trigger.isInsert) {
        List<Contact> contacts = new List<Contact>();
        for(Account accRec: Trigger.new){
            Contact  con =  new Contact();
            con.LastName = accRec.Name;
            con.AccountId = accRec.Id;
            contacts.add(con);
        }
        if(contacts.size() > 0){
            insert contacts;
        }
    }

    if(Trigger.isBefore && Trigger.isUpdate){
        // for(Account accRec: Trigger.new){
        //     acc
        // }
        System.debug('New values');
        System.debug(Trigger.new);
        System.debug(Trigger.newMap);

        System.debug('Old values');
        System.debug(Trigger.old);
        System.debug(Trigger.oldMap);


        for(Account acc: Trigger.new){
            Account accold = Trigger.oldMap.get(acc.Id);
            if(acc.Name != accold.Name){
                acc.addError('Account name can not be changed');
            }
        }
        
    }

    // if(Trigger.isAfter && Trigger.isUpdate){
    //     Set<Id> accIdsaddchanged = new set<Id>();
    //     for(Account acc: Trigger.new){
           
    //         Account accold = Trigger.oldMap.get(acc.Id);
    //         if(acc.BillingStreet != accold.BillingStreet){
    //            accIdsaddchanged.add(acc.Id);
                
                
    //         }
    //     }
    //     List<Account> accwithcontact = [select id,name, Billingcity,billingstreet,billingcountry, (SELECT id,name from Contacts) from Account where id in: accIdsaddchanged];
    //     List<Contact>  contacttochange = new List<Contact>();
    //     for (Account accc : accwithcontact) {
    //         List<Contact> contacttoupdateinloop = accc.contacts;
    //         for(Contact contact : contacttoupdateinloop) {      
    //             contact.MailingStreet = accc.BillingStreet;
    //             contact.MailingCity = accc.BillingCity;
    //             contact.MailingState = accc.BillingState;
    //             contact.MailingCountry = accc.BillingCountry;
    //             contacttochange.add(contact);
    //         }

            
    //     }
    //     if(contacttochange.size() > 0   ){
    //         update contacttochange;
    //     }
    // }

        if(Trigger.isAfter && Trigger.isDelete){
            List<Messaging.SingleEmailMessage> emailobje = new List<Messaging.SingleEmailMessage>();
            for(Account accOld : Trigger.old){
                Messaging.SingleEmailMessage emailObj = new Messaging.SingleEmailMessage();
                List<String> emailadd = new List<String>();
                emailadd.add(UserInfo.getUserEmail());
                emailObj.setToAddresses(emailadd);
                emailObj.setSubject('Account has been successfully deleted '+accOld.Name);
                emailObj.setPlainTextBody('Hello no body wriiten');
                emailObje.add(emailObj);
            }
            Messaging.sendEmail(emailObje);
        }
}