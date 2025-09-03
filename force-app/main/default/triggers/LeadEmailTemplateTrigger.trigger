trigger LeadEmailTemplateTrigger on Lead (after insert) {
    List <Lead> leads = trigger.new;
    if(Trigger.isAfter)
    {
        if(Trigger.isInsert )
        {
            LeadEmailTemplate.sendEmail(leads);
        }
    }
}