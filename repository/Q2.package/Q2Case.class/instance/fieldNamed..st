forms
fieldNamed: aString

	forms do: [:f | (f fieldNamed: aString) ifNotNilDo: [:retVal | ^retVal]].
	^nil