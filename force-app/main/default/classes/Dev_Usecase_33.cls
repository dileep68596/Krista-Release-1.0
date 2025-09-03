public class Dev_Usecase_33 {
    public void Dev_Usecase_33(){
        List<Account> accList = new List<Account>();
        List<String> accphone = new List<String>();
        accList = [SELECT Name , Phone , AnnualRevenue , Rating FROM Account];
        Set<String> uniqueAccNames = new Set<String>();
        
        for(Account a:accList){
            uniqueAccNames.add(a.Name);
        }
        for(Account a:accList){
            accphone.add(a.Phone);
        }
        System.debug(accList);
        System.debug(uniqueAccNames);
        System.debug(accphone);
    }
}