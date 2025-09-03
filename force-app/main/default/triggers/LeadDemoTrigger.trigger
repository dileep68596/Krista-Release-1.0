trigger LeadDemoTrigger on Lead (before insert , before Update) {
    for(Lead id : Trigger.New){
        // This will Update the Lead Description Field on before Insert and before Update Event.
        id.Description = 'This Lead has been updated by Tigger';
    }
}