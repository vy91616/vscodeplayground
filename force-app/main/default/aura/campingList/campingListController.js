({
    clickCreateItem : function(component, event) {
        let validExpense = component.find('expenseform').reduce(function (validSoFar, inputCmp) {
            // Displays error messages for invalid fields
            inputCmp.showHelpMessageIfInvalid();
            return validSoFar && inputCmp.get('v.validity').valid;
        }, true);
        if(validExpense) {
            let newCamping = component.get("v.newItem");

        }
    }
})
