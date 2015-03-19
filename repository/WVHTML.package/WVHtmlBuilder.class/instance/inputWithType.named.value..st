forms
inputWithType: type named: name value: value
	name ifNotNil: [self attributes name: name].
	value ifNotNil: [self attributes value: value asString].
		
	self attributes type: type.
	
	^self tag: 'input'