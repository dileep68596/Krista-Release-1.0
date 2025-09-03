public class SchemaController {
    public Integer count{get; set;}
    public List<SelectOption> options{get; set;}
    public List<SelectOption> fieldOptions{get; set;}
    
    
    
    public Set<String> fieldNames{get; set;}
    public String selectedObject{get; set;}
    public List<String> selectedField{get; set;}
    
    
    
    
    public List<SObject> queryResults{get; set;}
    
    
    
    Map<String, Schema.SObjectType> objectMap;
    
    
    
    public String query{get; set;}
    
    
    
    public SchemaController(){
        selectedField = new String[]{};
            objectMap = Schema.getGlobalDescribe();
        Set<String> objectNames = objectMap.keySet();
        
        
        
        options = new List<SelectOption>();
        count = 0;
        for(String ob: objectNames){
            if(count<1000){
                SelectOption opt = new SelectOption(ob,ob);
                options.add(opt);
                count++;
            }
        }
        options.sort();
    }
    
    
    
    
    
    public void getFields(){
        System.debug(selectedObject);
        Schema.SObjectType obj1 = objectMap.get(selectedObject); //selectedObject basically a selectedOption object of vfp
        Schema.DescribeSObjectResult result = obj1.getDescribe();
        Map<String, Schema.SObjectField> fldMap = result.fields.getMap();
        fieldNames = fldMap.keySet();
        fieldOptions = new List<SelectOption>();
        
        
        
        for(String ob: fieldNames){
            SelectOption opt = new SelectOption(ob,ob);
            fieldOptions.add(opt);
        }
        fieldOptions.sort();
        
        
        
    }
    
    
    
    public void selectFields(){
        System.debug('select field'+selectedObject);
        String fields = '';
        for(String s:selectedField){
            fields = fields+s+',';
        }
        fields = fields.removeEnd(',');
        query = 'select '+fields+' from '+selectedObject;
    }
    
    
    
    public void getResult(){
        
        
        
        
        queryResults = Database.query(query);
        
        
        
    }
}