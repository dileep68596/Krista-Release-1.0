public class Dev_Usecase_39 {
    public Dev_Usecase_39(){
        List<Account> accList1 = [Select  Name ,Rating , Industry, (Select lastName, Email , Phone from contacts)  From Account];
        List<Account> accList2 = [Select RecordTypeId, (Select Name , Amount From Opportunities) From Account];
        System.debug(accList1);
        System.debug(accList2);
    } 
}