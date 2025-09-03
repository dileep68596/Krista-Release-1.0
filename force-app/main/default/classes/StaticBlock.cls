public class StaticBlock {
    //Static Block
    static{
        System.debug('Static Block Excecuted');
    }
    //Constructor
    public StaticBlock(){
        System.debug('Constructor Excecuted');
    }
    //Instace Block
    {
        System.debug('Instance Block Excecuted');
    }
}