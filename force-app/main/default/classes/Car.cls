public class Car {
    Private String name, company;
    Private String model;				
    Private String year;
    Private String type;
    /*Public Car(String name, String type){
        System.debug('Inside 1st Constructor Name is ' +name+'Type is '+type);
        this.name = name;
        this.type = type;
    }*/
    Public Car(String name){
        System.debug('Inside 2nd Constructor Name is ' +Name);
        this.name = name;
    }
    /*Public Car(String name, String model){
        System.debug('Inside 3rd Constructor Name is ' +name+'Model is '+model);
        this.name = name;
        this.model = model;
    }*/
    Public Car(String name, String model, String year, String company, String type){
        this.name = name;
        this.model = model;
        this.company = company;
        this.type = type;
    }
    Public Car(){
        
    }
    Public Car(String name, String company){
        System.debug('Inside 6th Constructor Name is ' +this.name+'Model is '+this.company);
        this.name = name;
        this.company = company;
    }
    /*Public Car(String year){
        this.year = year;
    }*/
}