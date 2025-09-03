public class CaseTriggerHandler {
    public static void handlerBeforeUpdate(List<Case> newRecords, List<Case> oldRecords){
        
        /* If a case is closed then status and case reason cannot be changed.
		*/
        
        for(Case newRecord : newRecords){
            for(Case oldRecord : oldRecords){
                if(newRecord.Status == 'Closed' && 
                   oldRecord.Status == 'Closed' &&
                   oldRecord.Reason != newRecord.Reason){
                       newRecord.Status.addError('Case is closed');
                       newRecord.Reason.addError('Case Reason cannot be changed for Closed Case');
                   }
            }
        }
        
        /* Closed cases cannot be re-opened */
        
        for(Case oldRecord : oldRecords){
            for(Case newRecord : newRecords){
                if(newRecord.Status != 'Closed' && 
                   oldRecord.Status == 'Closed'){
                       newRecord.Status.addError('Closed Case cannot be re-opened');
                   }
            }
        }
    }
}