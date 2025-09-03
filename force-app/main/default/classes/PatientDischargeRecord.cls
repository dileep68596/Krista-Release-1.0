public class PatientDischargeRecord {
    public static void afterupdateDischargeRecord( List<Patient__c> patList){
        List<Discharge_Record__c> ptList = new List<Discharge_Record__c>();
        
        for(Patient__c pt: patList){
            if(pt.Patient_satus__c == 'Discharge'){
                Discharge_Record__c pat=new Discharge_Record__c();
                pat.name=pt.name;
                pat.Phone__c=pt.Mobile_Number__c;
                pat.Gender__c=pt.Gender__c;
                pat.Age__c=pt.Age__c;
                ptList.add(pat);
                
               
            }
        }
        if(ptList.size() > 0){
            
            insert ptList;
            
        }
    }
}