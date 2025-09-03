trigger OpportunityTrigger on Opportunity (before insert) {
    
    /* Develope an Apex Trigger on opportunity so that if the Amount and Discont filed is not blank then
       calculate the discount and store it in the Discount price field */
    if(Trigger.isBefore && Trigger.isInsert){
        List<Opportunity> OpportunityList = new List<Opportunity>();
        Decimal amount, discountedAmount;
        for(Opportunity op : OpportunityList){
            if(op.Discount__c != null && op.Amount != null){
                amount = ((op.Discount__c * op.Amount)/100);
                discountedAmount = op.Amount - amount;
                op.Discounted_Price__c = amount;
                op.Actual_Amount__c = discountedAmount;
            }
            insert OpportunityList;
        }        
    }
}