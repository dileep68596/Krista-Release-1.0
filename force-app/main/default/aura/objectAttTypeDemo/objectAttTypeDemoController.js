({
	handleSubmit : function(component, event, helper) {
		let accVar = component.get('v.acc');
        console.log('Name',accVar.Name);
        console.log('Phone',accVar.Phone);
        console.log('Industry',accVar.Industry);
	}
})