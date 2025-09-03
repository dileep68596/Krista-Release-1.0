public class Dev_Usecase_36 {
    public void Dev_Usecase_36(){
        List<Account> accounts = [Select Name , Industry , Rating , AnnualRevenue , Type From Account];
        Map<String,Decimal> accMap1 = new Map<String,Decimal>();
        Map<String,String> accMap2 = new Map<String,String>();
        Map<Id,String> accMap3 = new Map<Id,String>();
        Map<String,Account> accMap4 = new Map<String,Account>();
        Map<Id,Account> accMap5 = new Map<Id,Account>();
        for(account a : accounts){
            accMap1.put(a.Name , a.AnnualRevenue);
            accMap2.put(a.Name , a.Rating);
            accMap3.put(a.Id , a.Name);
            accMap4.put(a.Name , a);
            accMap5.put(a.Id , a);
        }
        System.debug(accMap1);
        System.debug(accMap2);
        System.debug(accMap3);
        System.debug(accMap4);
        System.debug(accMap5);
    }
}