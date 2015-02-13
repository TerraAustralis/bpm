services
replaceSelectionWith: aString
	"Make a replacement."

	code := code copyReplaceFrom: selection key to: selection value with: aString