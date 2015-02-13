as yet unclassified
testLogFile
	| levels all some crlf |
	crlf := String with: Character cr with: Character lf.
	levels := {#emergency. #alert. #critical. #error ". #warning. #notice. #info. #debug"}.
	Q2Platform workingDirectory deleteFileNamed: 'testall.log'; deleteFileNamed: 'testsome.log'.
	all := Q2LogFile named: 'testall.log' with: [:level :symbol :sender :msg |
			symbol, ': ', msg, ' (', sender class name, ')'].

	some := Q2LogFile named: 'testsome.log' with: [:level :symbol :sender :msg |
				((levels includes: symbol) and: 
				[msg beginsWith: 'makl'] and:
				[sender notNil]) ifTrue: [
					symbol, ': ', msg, ' (', sender class name, ')'
				]
			].
	"Do some stuff"
	Q2Log info: 'Testing info'.
	Q2Log warn: 'Testing warning'.
	Q2Log error: 'makl cannot code!'.
	
	all stop.
	some stop.	

	all := (Q2Platform workingDirectory) oldFileNamed: 'testall.log'.
	some := (Q2Platform workingDirectory) oldFileNamed: 'testsome.log'.
	self assert: (all contents = 	('---------------------------', crlf,
								'info: Testing info (Q2LoggingTests)', crlf, 
								'warn: Testing warning (Q2LoggingTests)', crlf, 
								'error: makl cannot code! (Q2LoggingTests)', crlf)).
	self assert: (some contents = 	('---------------------------', crlf,
								'error: makl cannot code! (Q2LoggingTests)', crlf)).

	all close.
	some close.
	Q2Platform workingDirectory deleteFileNamed: 'testall.log'; deleteFileNamed: 'testsome.log'.