public class CaseTriggerDispatcher {
    public static void dispatcher(system.TriggerOperation operation){
        Switch on operation{    
            WHEN BEFORE_UPDATE{
                CaseTriggerHandler.handlerBeforeUpdate(Trigger.New, Trigger.Old);
            }
        } 
    }
}