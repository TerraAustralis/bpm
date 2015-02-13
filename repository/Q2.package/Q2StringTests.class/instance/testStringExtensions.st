as yet unclassified
testStringExtensions
	| thisYear |
	thisYear := DateAndTime now year asString.
	self assert: (('123456789' left: 3) = '123').
	self assert: (('123' left: 3) = '123').
	self assert: (('12' left: 3) = '12').
	self assert: (('' left: 3) = '').

	self assert: (('123456789' right: 3) = '789').
	self assert: (('123' right: 3) = '123').
	self assert: (('12' right: 3) = '12').
	self assert: (('' right: 3) = '').

	self assert: ('123456789' onlyDigits).
	self deny: ('12345678p' onlyDigits).
	self assert: ('' onlyDigits).
	self deny: ('Magnus' onlyDigits).
	self deny: ('1 2 3 4 5' onlyDigits).

	self assert: (('2006-08-18' guessDateString) = '2006-08-18').
	self assert: (('06-08-18' guessDateString) = '2006-08-18').
	self assert: (('8-18' guessDateString) = (thisYear, '-8-18')).
	self assert: (('060818' guessDateString) = '2006-08-18').
	self assert: (('88' guessDateString) = (thisYear, '-8-8')).
	self assert: (('Magnus' guessDateString) = '').

	self assert: (('2006-08-18' guessDateStringAsDate) = (Date year: 2006 month: 8 day: 18)).
	self assert: (('06-08-18' guessDateStringAsDate) = (Date year: 2006 month: 8 day: 18)).
	self assert: (('8-18' guessDateStringAsDate) = (Date year: thisYear month: 8 day: 18)).
	self assert: (('060818' guessDateStringAsDate) = (Date year: 2006 month: 8 day: 18)).
	self assert: (('88' guessDateStringAsDate) = (Date year: thisYear month: 8 day: 8)).
	self should: ['Banarne' guessDateStringAsDate] raise: Error