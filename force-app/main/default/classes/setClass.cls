public class setClass {
    public setClass(){
        List<Account> accList = [SELECT Name , Phone , AnnualRevenue , Industry FROM Account LIMIT 10];
        Set<String> uniqueAccNames = new Set<String>();
        Set<String> uniquePhoneNos = new Set<String>();
        Set<Account> financeAcc = new Set<Account>();
        Decimal sumAnnualRev = 0.0;
        Set<String> accNames = new Set<String>();
        for(Account act : accList) {
            uniqueAccNames.add(act.Name);
            uniquePhoneNos.add(act.Phone);
            if(act.Industry == 'Finance'){
                financeAcc.add(act);   
            }
            if(act.AnnualRevenue > 100000){
                
                accNames.add(act.Name);
                System.debug(accNames);
                if(accNames.contains('sfdcmeet')){
                    System.debug('Match is found');
                }
                else{
                    System.debug('Match is not found');
                }
                
            }
            if(act.AnnualRevenue!=null){
                sumAnnualRev = sumAnnualRev + act.AnnualRevenue;
            }
            uniqueAccNames.addAll(accNames);
            System.debug(uniqueAccNames);
            System.debug(sumAnnualRev);
        }
    }
}