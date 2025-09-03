public with sharing class Dev_Usecase_15 {
    
    public Boolean displayInputputText{get;set;}
    public Boolean chkBx{get;set;}
    public String input{get;set;}
    
    public void click(){
        if(chkBx){
            displayInputputText = true;
        }
        else{
            displayInputputText = false;
        }
    }
}