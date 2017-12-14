public with sharing class HolidayPreviewerController {

    public Integer hoursLeft {get;set;}

    public void init() {
        try {
            Id itemId=ApexPages.currentPage().getParameters().get('id');
            Holiday__c item = [SELECT Id, Holiday_Date__c, Name FROM Holiday__c Where ID = :itemId];
            Long timeDiff = Datetime.newInstance(item.Holiday_Date__c,Time.newInstance(0,0,0,0)).getTime() - Datetime.now().getTime();
            hoursLeft=Math.round(timeDiff/1000/60/60);
        } catch (Exception e) {
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.WARNING,'Oops :)'));
        } 
    }
}
