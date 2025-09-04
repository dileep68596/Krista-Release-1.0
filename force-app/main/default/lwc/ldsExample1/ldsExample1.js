import { LightningElement } from 'lwc';

export default class LdsExample1 extends LightningElement {
    recordID;
    successHandler(event){
        this.recordID = event.detail.id; 
    }
}