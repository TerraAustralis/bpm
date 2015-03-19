forms
buttonForUrl: urlString withText: labelString data: assocCollection
	self formWithMethod: 'GET' action: urlString do:
		[assocCollection do: 
			[:each | self
				inputWithType: 'hidden'
				named: each key asString
				value: each value].
		self submitButtonWithText: labelString]