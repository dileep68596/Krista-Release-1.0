import { LightningElement, wire } from 'lwc';
import getSpecificAccs from '@salesforce/apex/AccountController.getSpecificAccs';
import TickerSymbol from '@salesforce/schema/Account.TickerSymbol';

const DELAY = 300;
export default class CallApexWirePropertyParam extends LightningElement {
    domainText;

    //@wire(importedApexMethodName, {apexParam : value}) property;
    @wire(getSpecificAccs, {domainValue: '$domainText'}) accounts;

 
    handleChange(event){
        let domainKey = event.target.value;   

        setTimeout(() =>{

            this.domainText = domainKey;

        }, DELAY);

        //setTimeout(this.myFunction(domainKey), 3000);
    }

    //myFunction(domainKey){
    //    this.domainText = domainKey;
    //}
}