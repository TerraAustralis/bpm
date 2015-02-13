as yet unclassified
findObjectSearchString: aString
	"Find the custom object with the given searchString."

	^objects readUnique: #searchString at: aString