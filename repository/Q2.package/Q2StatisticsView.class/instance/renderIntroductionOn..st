rendering
renderIntroductionOn: html

	(Q2Session processesOf: self) ifEmpty: [
		self currentUser isAdmin
			ifTrue: [html paragraph: 'There are no Processes created yet in the system, an administrator like yourself needs to create one.']
			ifFalse: [html paragraph: 'There are no Processes available upon which to compute statistics.'].
		^self].