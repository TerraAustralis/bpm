initialization
initialize
	
	super initialize.
	startDate := WADateSelector new.
	startDate startYear: Date today year - 4;
			 endYear: Date today year.
	endDate := WADateSelector new.
	endDate startYear: Date today year - 4;
		     endYear: Date today year.
	self registerForBacktracking.