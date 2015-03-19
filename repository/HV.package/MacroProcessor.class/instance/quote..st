processing
quote: aString
	"The model can call this method in its #expandMacro: method
	if it does not want the macro to be expanded like this:
	
	expandMacro: aString
		^macroProcessor quote: aString
	"

	^start, aString, end