public class Dev_Usecases_34 {
    public void Dev_Usecases_34(){
        List<Contact> conList = new List<Contact>();
        conList = [SELECT LastName , Phone  FROM Contact];
        List<Account> accList = new List<Account>();
        accList = [SELECT Name , Phone  FROM Account];
        Map<String , Contact> uniquePhoneNosMap =  new Map<String , Contact>();
        
        for(Contact c: conList){
            uniquePhoneNosMap.put(c.phone, c);
        }  
        System.debug(uniquePhoneNosMap);
    }
}