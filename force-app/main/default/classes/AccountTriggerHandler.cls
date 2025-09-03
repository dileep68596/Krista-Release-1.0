public class AccountTriggerHandler {
    public static void handlerBeforeInsert(List<Account> accountList){
        AccountTriggerHelper.updateAccountShippingAddress(accountList);
        AccountTriggerHelper.checkDuplicateAccount(accountList);
    }
    public static void handlerBeforeUpdate(List<Account> accountList){
        AccountTriggerHelper.updateAccountShippingAddress(accountList);
        AccountTriggerHelper.checkDuplicateAccount(accountList);
    }
    /* When the Account is created, create a Task Record under that Account and assign the Task to the Account Owner. 
        Use the below information.
        1. Subject - Created from Apex Trigger
        2. Description - Created from Apex Trigger
        3. Due Date - Today's Date + 7
        4. Priority - High
        5. Status = Not Started
        6.WhatId = AccountId;
        7.OwnerId = Account OwnerId;
	*/
    /* Create a custom object and name it "Location" .Relate this Location object with Account using lookup realtionship.
       Create a field on Account "Number of Location" of type Number.

       Develope a solution that will create a record location when the Account is created and the "Number of Location" field has 
       some value in it.The no. of Location related to the Account should be the same as the value in the "Number of Location"

       For Ex:  If the value of "Number of Location" is 4 then there should be 4 location records created under that Account.
    */
    public static void handlerAfterInsert(List<Account> accountList){
        List<task> taskRecordCreate = new List<task>();
        List<Location__c> locationRecordCreate = new List<Location__c>();
        for(Account acc : accountList){
            //Location__c loc = new Location__c();
            if(acc.Number_of_Location__c != null){
                for(Integer i = 0; i < acc.Number_of_Location__c; i++){
                    System.debug('Number of Location' + i);
                    Location__c loc = new Location__c();
                    loc.Name = acc.name + ' '+ 'New Location';
                    loc.Driving_Direction_Description__c = 'https://maps.app.goo.gl/jxcfr5RXqUEQPTro9';
                    loc.time_zone__c = (System.now()).time();
                    loc.Account__c = acc.Id;
                    loc.OwnerId = acc.OwnerId;
                    locationRecordCreate.add(loc);
                }
            }
            task t = new task();
            t.Subject = 'Created from Apex Trigger';
            t.Description = 'Created from Apex Trigger';
            t.Priority = 'High';
            t.Status = 'Not Started';
            t.ActivityDate = System.today().addDays(7);
            t.WhatId = acc.id;
            t.OwnerId = acc.OwnerId;
            taskRecordCreate.add(t);
            //locationRecordCreate.add(loc);
            
        }   
        insert taskRecordCreate;
        insert locationRecordCreate;
        List<Contact> c = new List<Contact>();
        for (Account acct : accountList) { 
            contact con = new contact();
            con.FirstName = 'New';
            con.LastName = 'Contact';
            con.AccountId = acct.Id;
            c.add(con);
        }
        insert c;
    }
    public static void handlerAfterUpdate(){
        
    }
}