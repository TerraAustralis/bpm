as yet unclassified
testCaseNames

	self assert: (Q2Case validName: '1').
	self assert: (Q2Case validName: '123').
	self assert: (Q2Case validName: 'a1').
	self assert: (Q2Case validName: 'ab1').
	self assert: (Q2Case validName: 'a123').
	self assert: (Q2Case validName: 'abc1').
	self deny: (Q2Case validName: '').
	self deny: (Q2Case validName: 'a1a').
	self deny: (Q2Case validName: ' a1').
	self deny: (Q2Case validName: 'a 1').
	self deny: (Q2Case validName: '1 ').
	self deny: (Q2Case validName: ' 1').