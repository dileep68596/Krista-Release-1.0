public class StackMemoryDemo {
    public void methodA(){
        System.debug('Inside Method A');  
        methodE();
        methodB();
        methodD();
        System.debug('A');
            }
    public void methodB(){
        System.debug('Inside Method B');
        methodC();
        System.debug('B');
    }
    public String methodC(){
        //methodD();
        System.debug('C');
        return 'Method C';
    }
    public void methodD(){
        //methodE();
        System.debug('D');
    }
    public void methodE(){
        System.debug('Inside Method E');
    }
}