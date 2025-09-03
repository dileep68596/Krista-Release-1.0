public class AllPatient{

    @AuraEnabled(cacheable=true)
    public static List<Patient__c> getPatientSpecificList(String str){ 
        str = '%' + str + '%';       
        List<Patient__c> patLists= [Select Name,Age__c,Gender__c,Mobile_Number__c,Patient_satus__c,Bed_Number__c,
        Ward_Number__r.Ward_Name__c,Ward_Number__r.Name From Patient__c where Name LIKE:str ];  
          
        return patLists;
    }
}