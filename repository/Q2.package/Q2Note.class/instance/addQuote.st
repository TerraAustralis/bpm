quoting
addQuote

	| quote |
	quote _ self quoted: (parent ifNil: [case]).
	description _ description isEmptyOrNil
					ifTrue: [quote]
					ifFalse: [description, String cr, quote]