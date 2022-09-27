({
    fetchOppHelper: function(searchVal, component) {
        component.set("v.columnsToDisplay",[
            {label: "Opportunity Name",fieldName: "Name",type:  "text"},
            {label: "Accouunt Name",fieldName: "Account_Name__c",type:  "text"},
            {label: "Close Date",fieldName: "CloseDate",type:  "Date"},
            {label: "Amount",fieldName: "Amount",type:  "currency" }

        ]);
        var action = component.get("c.fetchOpportunity");
        action.setParams({
            "serchKeyword":searchVal
        });
        action.setCallback(this, function(response){
            var state  = response.getState();
            if(state == "SUCCESS"){
                debugger;
                component.set("v.lstOpportunity", response.getReturnValue());
        }
        else{
            alert("An error occurred while fetching the opportunity");
        }
    });
    $A.enqueueAction(action);
}
   
})
