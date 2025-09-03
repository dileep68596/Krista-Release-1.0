public with sharing class LeadEmailTemplate {
    
    public static List<Lead> sendEmail (List<Lead>Leads)
    {
        //query on template object
        EmailTemplate et=[Select id from EmailTemplate where name=:'leadsemail'];
        
        //list of emails
        List<Messaging.SingleEmailMessage> emails = new List<Messaging.SingleEmailMessage>();
        
        for(Lead con : Leads)
        {
            //check for Account
            if(con.Id != null && con.Email != null){
                
                //initiallize messaging method
                Messaging.SingleEmailMessage singleMail = new Messaging.SingleEmailMessage();
                
                //set object Id
                singleMail.setTargetObjectId(con.Id);
                
                //set template Id
                singleMail.setTemplateId(et.Id);
                
                //flag to false to stop inserting activity history
                singleMail.setSaveAsActivity(false);
                
                //add mail
                emails.add(singleMail);
            }
        }
        //send mail
        Messaging.sendEmail(emails);
        
        return Leads;
        
    }
}