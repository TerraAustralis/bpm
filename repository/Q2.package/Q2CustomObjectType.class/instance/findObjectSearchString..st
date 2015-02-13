search
findObjectSearchString: aString
	"Find the custom object with the given searchString."

	^objects detect: [:each | each searchString = aString] ifNone: [nil]