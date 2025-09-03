public virtual class Marker {
    public String markerName;
    public Marker(){
        
    }
    public Marker(String name){
        
        this.markerName = name;
        
    }
    public virtual void write(){
        system.debug(markerName+' is writing');
        
    }
}