public class MapTest {
    public MapTest(){
        Contact c1 = new Contact(LastName = 'Myla',phone='1111',  email = 'abc@gmail.com');
        Contact c2 = new Contact(LastName = 'Mandava', phone='2222',email = 'xyz@gmail.com');
        Contact c3 = new Contact(LastName = 'Jasti', phone='3333',email = 'anc@gmail.com');
        List<Contact> conlist = new List<Contact>{c1,c2,c3};
            
        Map<String,String> m = new Map<String,String>();
        for(Contact c : conlist) {
            m.put(c.LastName,c.email);
        }
        
        System.debug(m);
         for(Contact c : conlist) {
            m.put(c.LastName,c.Phone);
        }
         System.debug(m);
    }     
    
}