public class Dev_Usecase_28 {
	public List<Opportunity> opp;
    public Dev_Usecase_28(){
        opp = new List<opportunity> {new opportunity(Name = 'opty1', Amount = 10000 , CloseDate = System.today() , StageName = 'Closed Won'),
        	new opportunity (Name = 'opty2', Amount = 20000 , CloseDate = System.today()+30 , StageName = 'Prospecting'), 
            new opportunity (Name = 'opty3', Amount = 0000 , CloseDate = System.today() , StageName = 'Closed Lost'),
            new opportunity (Name = 'opty4', Amount = 20000 , CloseDate = System.today()+15 , StageName = 'Negotiation'),
            new opportunity (Name = 'opty5', Amount = 40000 , CloseDate = System.today() , StageName = 'Closed Won')
            };
                opp.add(new opportunity (Name = 'opty6', Amount = 10000 , CloseDate = System.today() , StageName = 'Negotiation'));
        	System.debug('op1:' + opp[0]);
        	opportunity opp3 = opp[2];
        		System.debug('po1Name:' + opp[0].name);
        		System.debug('opp3:' + opp[2].StageName);
        	String name2 = opp[1].Name;
        	Decimal amount2 = opp[1].Amount;
        	Decimal sumAmount = opp[0].Amount + opp[1].Amount;
        		System.debug('Sum of 1st and 4th Amount:' + sumAmount);
        	Decimal Total = 0;
        for(opportunity o: opp){
            Total+= o.Amount;
        }
    }
}