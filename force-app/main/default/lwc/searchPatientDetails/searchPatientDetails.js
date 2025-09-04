import { LightningElement,wire} from 'lwc';
import getPatientSpecificList from '@salesforce/apex/AllPatient.getPatientSpecificList';
export default class searchPatientDetails extends LightningElement {
patients;
error;
str;   

    handleChange(event){
        this.str = event.target.value;
    }
    handlesearch(){
        getPatientSpecificList({str:this.str})
        .then(res => {
            this.patients = res;
        })
        .catch( err => {
            this.error = err;
        });
    }
    

}