import { LightningElement, wire } from 'lwc';
import getAccounts from '@salesforce/apex/AccountController.getAccounts';

export default class CallApexWireProperty extends LightningElement {

    @wire(getAccounts) accounts; //accounts.data if successfull server call else accounts.error
    
}