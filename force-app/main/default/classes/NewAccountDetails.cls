public class NewAccountDetails {
    private String accountName;
    private Integer noOfEmployees;
    public String rating          {get; private set; }  // Publically accessible, Private set(Within class)
    public String typex           {private get; set; }  // Private accessible (Within class), publically set
    public String partnerFunction {get; set; }          // Publically accessible, Publically set
    
    public String getName(){
        return this.accountName;
    }
    
    public void setName(String name){
        this.accountName = name;
        
    }
    public Integer getNoOfEmployees(){
        return this.noOfEmployees;
    }
    public void setNoOfEmployees(Integer employees){
        this.noOfEmployees = employees;
    }    
    private class AcccountWrapper{
        private String accountName;
        private Integer noOfEmployees;
    }
}