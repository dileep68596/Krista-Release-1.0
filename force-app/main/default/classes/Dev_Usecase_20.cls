public class Dev_Usecase_20 {
    public void Dev_Usecase_20(){
    Opportunity a1 = new Opportunity(Name = 'opty1', Amount = 10000 , CloseDate = System.today() , StageName = 'Closed Won');
    Opportunity a2 = new Opportunity(Name = 'opty2', Amount = 20000 , CloseDate =(System.today() +30) , StageName = 'Prospecting');
    Opportunity a3 = new Opportunity(Name = 'opty3', Amount = 00000 , CloseDate = System.today() , StageName = 'Closed Lost');
    Opportunity a4 = new Opportunity(Name = 'opty4', Amount = 20000 , CloseDate = (System.today() +15) , StageName = 'Negotiation');
    Opportunity a5 = new Opportunity(Name = 'opty5', Amount = 40000 , CloseDate = System.today() , StageName = 'Closed Won');
    Opportunity[] op = new Opportunity[]{a1, a2, a3 ,a4 ,a5};
        
        //Display Opportunity record one by one in the log
       for(Opportunity o:op){
                System.debug(o);
            }
    
    //Display account name one by one in the log
    for(Opportunity o : op){
        System.debug(o.Name);
    }
        Decimal sum=0.0;
         for(Opportunity o:op){
                if(o.StageName=='Closed Won' || o.StageName =='Closed Lost'){
                     System.debug(o.CloseDate);                
                }    
                if(o.StageName !='Close Lost'){
                    sum+=o.Amount;
                }
            }
        System.debug('Total amount if not close lost :'+sum);
        for(Opportunity o:op){
                if(o.Amount>10000 || (o.StageName =='Prospecting' && o.CloseDate != System.Today())){
                     System.debug(o.Name);                
                }    
                
            }
}
}