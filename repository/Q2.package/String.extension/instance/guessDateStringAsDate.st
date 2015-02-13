*q2-extensions
guessDateStringAsDate
	| yyyymmdd |
	yyyymmdd := self guessDateString findTokens: '-'.
	^Date year: yyyymmdd first asInteger 
		month: yyyymmdd second asInteger
		day: yyyymmdd third asInteger
"
	'2006-08-18' guessDateStringAsDate
	'06-08-18' guessDateStringAsDate
	'8-9' guessDateStringAsDate
	'060818' guessDateStringAsDate
	'111' guessDateStringAsDate
	'18' guessDateStringAsDate
"