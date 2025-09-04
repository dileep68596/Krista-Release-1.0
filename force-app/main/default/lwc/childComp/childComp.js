import { LightningElement, api } from 'lwc';

export default class ChildComp extends LightningElement {
    //Use the decorator '@api' to expose the property as public 
    @api childName = 'Chennai';

    sendBackData(event)
    {
        this.dispatchEvent(
            new CustomEvent("senddatafromchild",
            { 
                detail: "I am from child"
            }
        )
        )
    }
}