public class Dev_Usecase_16 {
    public Dev_Usecase_16(){
        Contact c1 = new Contact();
        c1.lastName='Kumar';
        c1.firstName='Dileep';
        c1.email='dileep@gmail.com';
        c1.phone='797776667';
        
        lead ld=new lead();
        ld.id='1';
        ld.lastName='Kumar';
        ld.company='CTS';
        
        opportunity opp=new opportunity();
        opp.Name='test1';
        opp.stageName='closed';
        opp.amount=10010;
        opp.closeDate=System.today();
    }
}