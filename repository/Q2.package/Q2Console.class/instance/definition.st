accessing
definition

	^definition ifNil: [
		target
			ifNil: ['']
			ifNotNil: [^target definition]]