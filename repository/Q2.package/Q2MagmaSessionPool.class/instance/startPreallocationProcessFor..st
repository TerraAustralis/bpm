session allocation
startPreallocationProcessFor: sessionCount

	Q2Log debug: 'Starting preallocation process for ', sessionCount asString, ' sessions'.
	self critical: [
		preallocationInProgress := true.
		[ [ sessionCount timesRepeat: [ 
			self createAFreeSession ] ] 
				ensure: [ 
					self critical: [
						preallocationInProgress := false ].
					Q2Log debug: 'Finished preallocation process for ', sessionCount asString, ' sessions'. ] ] fork ]