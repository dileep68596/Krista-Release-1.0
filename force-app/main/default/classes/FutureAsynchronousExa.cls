public class FutureAsynchronousExa {
    public void processA(){  
        System.debug('Process A: Statement 1');
        System.debug('Process A: Statement 2');
        System.debug('Process A: Statement 3');   
        processB();
    }
    
    public void processB(){  
        System.debug('Process B: Statement 1');
        System.debug('Process B: Statement 2');
        ProcessC();
        System.debug('Process B: Statement 3');
        ProcessD();
    }
    
    @future
    public static void processC(){   
        System.debug('Process C: Statement 1');
        System.debug('Process C: Statement 2');
        System.debug('Process C: Statement 3');
    }
    
    public void processD(){  
        System.debug('Process D: Statement 1');
        System.debug('Process D: Statement 2');
        System.debug('Process D: Statement 3');
    }
    
    public void callProcess(){
        ProcessA(); 
    }
}