rendering
expanded
	"Return all names that should be expanded.
	We retrieve the cookie and convert it to a Set of Symbols."

	| attrs tocSym tc |
	tocSym := builder view tocSymbol.
	attrs := KomSession current attributes.
	tc := attrs at: tocSym ifAbsent:[attrs at: tocSym put: ''].
	tc ifNil: [tc := attrs at: tocSym put: ''].
	^((tc findTokens: $,) collect: [:s | s asSymbol]) asSet