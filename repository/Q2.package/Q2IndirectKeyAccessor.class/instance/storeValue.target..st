accessing value
storeValue: value target: aTarget
	^ (aTarget perform: selector) at: key put: value