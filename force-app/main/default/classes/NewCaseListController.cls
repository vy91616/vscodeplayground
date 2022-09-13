public with sharing class NewCaseListController {
    public List<Case> getNewCase() {
        List<Case> result = Database.query('SELECT Id, CaseNumer' + 'From Case' + ' WHERE status = New' );
        return result;
    }
    

}
