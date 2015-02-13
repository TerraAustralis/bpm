searching
freetext: aSearchString
	"Silly search, not used anymore."

	| pattern |
	pattern _ '*', aSearchString, '*'.
	^(pattern match: subject) or: [pattern match: description]