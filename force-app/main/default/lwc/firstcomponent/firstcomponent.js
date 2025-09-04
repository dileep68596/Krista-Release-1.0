import { LightningElement ,track,api} from 'lwc';

export default class Firstcomponent extends LightningElement {
    @api greeting = "world";
    @track address={
        City: 'Kolkata',
        Code:'123'
    }
    changeHandler(event){
        this.greeting = event.target.value;
    }
    changeHandlercity(event){
        this.address.City=event.target.value;
    }
}