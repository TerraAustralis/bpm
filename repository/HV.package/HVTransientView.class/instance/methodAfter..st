deprecated
methodAfter: aPrefix 
	self deprecated: 'Deprecated, use #nextMethod or similar methods instead.'.
	^ self methodInUrl: request rawUrl after: aPrefix