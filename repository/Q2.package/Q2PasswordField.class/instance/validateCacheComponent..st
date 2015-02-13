testing
validateCacheComponent: fieldComponent
	fieldComponent getCache = (self cacheConfirmationComponent: fieldComponent) ifFalse: [
		^'Confirmation of password is not correct.']