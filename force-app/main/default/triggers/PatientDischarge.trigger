trigger PatientDischarge on Patient__c (after update) {
    if(trigger.isupdate) {
        if(Trigger.isAfter)
            PatientDischargeRecord.afterupdateDischargeRecord(trigger.new);
    }
    
    
}