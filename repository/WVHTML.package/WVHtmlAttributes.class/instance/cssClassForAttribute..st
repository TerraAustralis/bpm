rendering
cssClassForAttribute: aString
	^ (self isKnownAttribute: aString) ifTrue: ['attribute-known'] ifFalse: ['attribute-unknown']