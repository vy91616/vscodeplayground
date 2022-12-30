public with sharing class sendContactToExternalSystem {
    public  void sendcontact(string firstname, string lastname, string email, string title) {

    }

    @future(callout = true)
    public static void sendDataToSalesforceChildSystem(id id2){
       Contact con = [select fistName, lastName, email, title from Contact where id=:id2];    
       partnerSoapSforceCom.Soap myPartnerSoap =  new partnerSoapSforceCom.Soap();
       partnerSoapSforceCom.LoginResult partnerLoginResult= myPartnerSoap.login('vy91616@mindful-fox-ioglj4.com','Iamironman@12Nzo9SbjiDomFlcV3AYX2QFuQc');
       System.debug('Generated seesion '+partnerLoginResult.sessionId);
       string sessionIdfetch=partnerLoginResult.sessionId;
    }
}
