public class Dev_Usecase_37 {
    public void Dev_Usecase_37(){
        List<Account> accList = [Select Name , Industry From Account];
        List<Contact> conList = [Select  lastname ,firstname From contact];
        List<User> userList = [Select  lastname ,firstname From User];
        List<Employee__c> emp =  [SELECT First_Name__c,Salary__c FROM Employee__c];
        System.debug(accList);
        System.debug(conList);
        System.debug(userList);
        System.debug(emp);
    }
}