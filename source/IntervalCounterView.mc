using Toybox.WatchUi;

class IntervalCounterView extends WatchUi.SimpleDataField {
	var intervalNumber = 0;
	var lapButtonClickNumber = 0;
	
    // Set the label of the data field here.
    function initialize() {
        SimpleDataField.initialize();
        label = "Interval number";
    }
    
    function onTimerLap() {
    	lapButtonClickNumber += 1;
    	
    	if (lapButtonClickNumber % 2 == 1) {
    		intervalNumber++;
    	}
    }

    // The given info object contains all the current workout
    // information. Calculate a value and return it in this method.
    // Note that compute() and onUpdate() are asynchronous, and there is no
    // guarantee that compute() will be called before onUpdate().
    function compute(info) {
        // See Activity.Info in the documentation for available information.
        return intervalNumber;
    }

}