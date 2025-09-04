import { LightningElement, track } from 'lwc';

export default class PropertyExample extends LightningElement {        
    @track name;
    city='chennai';

    handleChange(event){
        console.log('invoked! ', this.city);
        console.log('invoked! ', this.city);
    }

    handleClear(event){
        console.log('handle clear');
        this.name = '';
    }
}