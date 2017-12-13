public with sharing class HolidaysController {
    public List<Holiday__c> holidays {
        get {
            return [select Id, Name, Holiday_Date__c FROM Holiday__c];
        }
    }
}
