finding
wrappedUser: aUserOrWrapper
	"This ensures we have the wrapped user."

	^aUserOrWrapper isImported
		ifTrue: [aUserOrWrapper]
		ifFalse: [importedUsers findNamed: aUserOrWrapper username]