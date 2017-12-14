public with sharing class HolidaysController {
    public List<Holiday__c> holidays {
        get {
            try {
                return [select Id, Name, Holiday_Date__c FROM Holiday__c];
            } catch (Exception e) {
                ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.WARNING,'Oops :)'));
                return null;
            }
        }
    }
}
