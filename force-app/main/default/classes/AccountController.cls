public class AccountController{
    public Account a {get; set;}
    public Account[] accs {get; set;}
    public List<Account> accList {get; set;}    
   
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts(){
        return [Select Name, Phone, Industry, AnnualRevenue From Account];
        System.debug('Test Email');
    }
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getSpecificAccs(String domainValue){
        return [Select Name, Phone, Industry, AnnualRevenue From Account Where Industry = :domainValue];
    }
}