forms
findFormFieldById: anId
	"Look both here and in all processes."

	| result |
	forms, processes do: [:obj |
		result := obj findFormFieldById: anId.
		result ifNotNil: [^result]].
	^nil