public class opportunityController {
    public opportunity a {get;set;}
    public opportunity[] opps {get; set;}
    public List<Opportunity> oppList {get; set;}
        
   
    
    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getOpportunities(){
        return [Select Name, StageName, Amount From Opportunity];
    }
    
    /*@AuraEnabled(cacheable=true)
    public static List<Account> getSpecificAccs(String domainValue){
        return [Select Name, Phone, Industry, AnnualRevenue From Account Where Industry = :domainValue];
    }*/
    
}