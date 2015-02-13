as yet unclassified
checkSyntaxOf: aString
	definitionMorph setSelection: (1 to: aString size).
	Q2Parser new
		parse: (TextStream on: aString)
		class: rootProxy targetClass
		noPattern: true
		context: nil
		notifying: definitionMorph
		ifFail: [^false].
	^true