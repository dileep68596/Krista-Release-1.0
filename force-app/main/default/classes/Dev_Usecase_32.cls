public class Dev_Usecase_32 {
    public void Dev_Usecase_32(){
        Account a1 = new Account(Name = 'Wipro',phone='1111'  );
        Account a2 = new Account(Name = 'TCS', phone='2222');
        Account a3 = new Account(Name = 'Dell', phone='3333');
        Account a4 = new Account(Name = 'CSC', phone='4444');
        List<Account> acclist = new List<Account>{a1,a2,a3,a4};
            
        Map<String,Account> m = new Map<String,Account>();
        for(Account acc : acclist) {
            m.put(acc.Name,acc);
        }
         System.debug(m.get('CSC'));
         System.debug(m.get('Dell'));
    }     
    
}