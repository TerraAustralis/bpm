macros
expandMacro: macro
	"Handles some smart macros. If macro expansion fails we
	return it prefixed with Exception message."

	| upper |
	upper := macro asUppercase.

	[upper = 'BASE' ifTrue: [^base].
	upper = 'DATE' ifTrue: [^Date today asString]]
		on: Exception do: [:ex |
			^'Exception: ', ex printString, ', when expanding macro: ', macro].

	"Otherwise include it untouched"
	^macroProcessor quote: macro