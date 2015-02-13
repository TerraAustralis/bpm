forms
findFormNamed: aName
	"Look in all forms, both mine and imported."

	forms do: [:f | f name = aName ifTrue: [^f]].
	importedForms do: [:f | f name = aName ifTrue: [^f]].
	^nil