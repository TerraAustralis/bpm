forms
findFormFieldById: anId
	"Look in all my own forms."

	| result |
	forms do: [:obj |
		result _ obj findFormFieldById: anId.
		result ifNotNil: [^result]].
	^nil