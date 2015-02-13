private
labelForKey: aKey

	^aKey ifNil: [nilItemStringKeys] ifNotNil: [aKey displayString]