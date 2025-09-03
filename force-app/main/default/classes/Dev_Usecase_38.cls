public class Dev_Usecase_38 {
    public void Dev_Usecase_38(){
        List<Contact> conList1 = [Select  lastname ,firstname ,Phone , Email  , AccountId From contact];
        List<Case> cList = [Select CaseNumber ,Status ,AccountId From Case];
        List<employee__c> empList = [Select Name , Grade__c,Department_Name__c FROM Employee__c];
        List<Contact> conList2 = [SELECT LastName, Phone, Email, AccountId FROM Contact where Account.Industry='Energy'];
        System.debug(conList1);
        System.debug(empList);
        System.debug(cList);
        System.debug(conList2);
    }
}