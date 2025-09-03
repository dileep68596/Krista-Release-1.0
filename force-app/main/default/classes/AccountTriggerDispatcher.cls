public class AccountTriggerDispatcher {
    //TriggerOperation
    //BEFORE_INSERT,BEFORE_UPDATE, AFTER_INSERT,AFTER_UPDATE, BEFORE_DELETE,AFTER_DELETE
    //system.TriggerOperation=~Trigger.operationType
    //BEFORE_INSERT,BEFORE_UPDATE, AFTER_INSERT,AFTER_UPDATE, BEFORE_DELETE,AFTER_DELETE
    public static void dispatcher(system.TriggerOperation operation){
        Switch on operation{
            WHEN BEFORE_INSERT{
                AccountTriggerHandler.handlerBeforeInsert(Trigger.new);
            }
            WHEN BEFORE_UPDATE{
                AccountTriggerHandler.handlerBeforeUpdate(Trigger.new);
            }
            WHEN AFTER_INSERT{
                AccountTriggerHandler.handlerAfterInsert(Trigger.new);
            }
            WHEN AFTER_UPDATE{
                
            }
        }
    }
}