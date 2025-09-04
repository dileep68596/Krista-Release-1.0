({
    getConFromApex : function(component, event, helper) {
        
        let action = component.get('c.getContacts'); // call apex method (step 1)
        
        action.setCallback(this, function(response) { // callback function definition (step 3)
            
            if (response.getState()) { // if we get something returned this value is success
                
                console.log(response.getState());
                component.set('v.cons', response.getReturnValue()); // returned value is stored in attribute 'cons'
                component.set('v.truth', true);
            }
            
            else {
                
                console.log('Failed');
            }
        });
        
        $A.enqueueAction(action); // push action to the server queue - js (step 2)
    },
    
    handleNav : function(component, event, helper) {
        
        var recordId = event.getSource().get('v.value');
        var navService = component.find("navService");
        var pageReference = {
            "type": "standard__recordPage",
            "attributes": {
                "objectApiName": "Contact",
                "recordId": recordId,
                "actionName": "view"
            }
        };
        navService.navigate(pageReference);
    }
})