public class Dev_Usecase_34 {
    public void Dev_Usecase_34(){
        List<Contact> conList = [SELECT LastName , Phone  FROM Contact];
        List<Account> accList = [SELECT Name , Phone  FROM Account];
        set <String> uniquePhoneNos =  new set <String>();
        for(Account a: accList){
            uniquePhoneNos.add(a.Phone);
        }
        for(Contact c: conList){
            uniquePhoneNos.add(c.Phone);
        } 
        
        System.debug(uniquePhoneNos);
    }
}