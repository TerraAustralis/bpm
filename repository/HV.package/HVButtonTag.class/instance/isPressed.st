callbacks
isPressed
	| request |
	request := canvas request.
	^ (request isSubmitRequest)
		and: [request fields includesKey: self name]
		and: [(request fields at: self name) = (self attributeAt: 'value')]