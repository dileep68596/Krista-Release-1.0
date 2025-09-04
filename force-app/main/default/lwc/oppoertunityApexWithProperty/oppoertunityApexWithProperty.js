import { LightningElement , wire } from 'lwc';
import getOpportunities from '@salesforce/apex/opportunityController.getOpportunities';
export default class OppoertunityApexWithProperty extends LightningElement {
    @wire(getOpportunities) opps;
}