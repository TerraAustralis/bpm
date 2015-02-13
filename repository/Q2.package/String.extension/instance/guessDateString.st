*q2-extensions
guessDateString
	| size |
	('####-*-*' match: self) ifTrue:
		["yyyy-m-d" ^self].
	('##-*-*' match: self) ifTrue:
		["yy-m-d" ^(DateAndTime now year / 100) asInteger asString, self].
	('*-*' match: self) ifTrue:
		["m-d" ^((DateAndTime now year) asString, '-', self) guessDateString].

	size := self size.
	(self onlyDigits) ifTrue: "Check size"
		[(size > 4) ifTrue:
			["(yyy)y-mm-dd" ^	((self left: (size - 4)), '-',
								(self copyFrom: (size - 3) to: (size - 2)), '-',
								(self right: 2)) guessDateString].
		"Split the string in half and keep guessing"
		^((self left: (size/2) floor asString), '-', (self right: (size/2) ceiling asString)) guessDateString
	].
	^''
"
	'2006-08-18' guessDateString
	'06-08-18' guessDateString
	'8-9' guessDateString
	'060818' guessDateString 
	'111' guessDateString
	'18' guessDateString
"