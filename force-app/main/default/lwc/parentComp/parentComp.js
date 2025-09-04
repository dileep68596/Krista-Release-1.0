import { LightningElement ,api} from 'lwc';

export default class ParentComp extends LightningElement {
    @api greeting= 'Good Morning'
    childData;
    handlechildevent(event){
        this.childData= event.detail;
    }
}