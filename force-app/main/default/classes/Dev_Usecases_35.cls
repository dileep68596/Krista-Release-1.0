public class Dev_Usecases_35 {
    public void Dev_Usecases_35(){
        List<Lead> leadList = [Select LastName , Rating , AnnualRevenue , Phone , Company From Lead];
        Set <String> uniqueLastName = new Set <String>();
        Set <Id> Ids = new Set <Id>();
        
        for(Lead l : leadList){
            uniqueLastName.add(l.LastName);
        }
        for(Lead l : leadList){
            Ids.add(l.Id);
        }
        Decimal Sum = 0;
        for(Lead l : leadList){
            if(l.Rating == 'Hot' && l.AnnualRevenue!= null){
                Sum = Sum + l.AnnualRevenue;
            }
        }
        System.debug(uniqueLastName);
        System.debug(Sum);
        System.debug(Ids);
    }
    
}