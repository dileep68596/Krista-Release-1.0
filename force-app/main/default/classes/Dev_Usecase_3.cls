public class Dev_Usecase_3 {
    public Integer add(Integer aval, Integer bval){
        Integer Sum = aval + bval;
        return Sum;
    }
    public Integer calculate(Integer amount, Integer years){
        Integer Interest = (amount * years * 5)/100;
        return Interest;
    }
    public Integer getDetails(Integer exp, Integer salary){
        Integer bonus = salary + (exp * 1000);
        return bonus;
    }
    public void updateAccount(String Industry){
        if(Industry == 'Banking')
            System.debug('Rating is Hot and Ownership is public');
        else
            System.debug('Rating is Warm and Ownership is private');
    }
    public Decimal calculate (String city ,Decimal salary, Decimal exp){
        Decimal total,bonus,ta,da;
        if( city == 'Hyd' && exp > 5 ){
            bonus=salary+salary*0.20;
            ta=salary+salary*0.05;
            da=salary+salary*0.15;
        }else{
            if(city!='Hyd' && exp >5 ){
                bonus=salary+salary*0.10;
                ta=salary+salary*0.05;
                da=salary+salary*0.05;
            }
        }
        total=salary+bonus+ta+da;
        return total;
    }

}