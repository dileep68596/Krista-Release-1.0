public class AccountTriggerHelper {
	//Reusable Methods
    public Static void updateAccountShippingAddress(List<Account> accountList){
        for(Account acc : accountList){
            if(acc.Industry == null){
                acc.Description = 'The Industry description is blank';
            }
            /* develope an apex trigger so that every time when account is created or updated then
			   set the value of biling address to shipping address
			*/
            acc.ShippingCity = acc.BillingCity;
            acc.ShippingCountry = acc.BillingCountry;
            acc.ShippingPostalCode = acc.BillingPostalCode;
            acc.ShippingState = acc.BillingState;
            acc.ShippingStreet = acc.BillingStreet;
        }
        System.debug('Trigger.New' +Trigger.New);
        System.debug('Trigger.old' +Trigger.old);
    }
    	/* Business got to know that there are multiple accounts with the same name and rating. Now, as a develope,
           you need to make sure that no new duplicates are being created with the same name and rating.
        */ 
    public static void checkDuplicateAccount(List<Account> newRecord){
        Set<String> existingAccountNameSet = new Set<String>();
        Set<String> existingAccountRatingSet = new Set<String>();
        for(Account existingAcc: newRecord){
            existingAccountNameSet.add(existingAcc.Name);
            existingAccountRatingSet.add(existingAcc.Rating);
        }
        List<Account> existingAccountList = [SELECT ID, Name, Rating 
                                     FROM Account WHERE 
                                     Name IN: existingAccountNameSet AND 
                                     Rating IN: existingAccountRatingSet AND
                                     Id NOT IN: newRecord
                                     LIMIT 50000 
                                    ];
        for(Account acc : newRecord){ //Trigger.new Records
            for(Account extAcc: existingAccountList){
                system.debug(acc.Name);
                system.debug(acc.Rating);
                if(extAcc.Name == acc.Name && extAcc.Rating == acc.Rating){
                    //Atleast 1 duplicate record found
                    acc.adderror('Duplicate record has been found with same name and rating!');
                    acc.Name.adderror('Duplicate record has been found with same name');
                }
            }
        }
    }
}