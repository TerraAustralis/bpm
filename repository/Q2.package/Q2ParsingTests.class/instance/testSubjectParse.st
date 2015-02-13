as yet unclassified
testSubjectParse

	
	self assert: (Q2Note parseSubject: '[#1]' do: [:n :x | self assert: (n = '1'). self assert: (x isNil). true]).
	self assert: (Q2Note parseSubject: '[#1:2]' do: [:n :x | self assert: (n = '1'). self assert: (x = 2). true]).
	self assert: (Q2Note parseSubject: 'abc[#1:2]' do: [:n :x | self assert: (n = '1'). self assert: (x = 2). true]).
	self assert: (Q2Note parseSubject: 'abc[#1:2]def' do: [:n :x | self assert: (n = '1'). self assert: (x = 2). true]).
	self assert: (Q2Note parseSubject: '[#peal1:2]def' do: [:n :x | self assert: (n = 'peal1'). self assert: (x = 2). true]).
	self assert: (Q2Note parseSubject: '[#peal1]def' do: [:n :x | self assert: (n = 'peal1'). self assert: (x isNil). true]).
	self assert: (Q2Note parseSubject: 'a[#p1:a]b' do: [:n :x | self assert: (n = 'p1'). self assert: (x isNil). true]).

	self deny: (Q2Note parseSubject: '[#1a]' do: [:n :x | self error: 'no']).
	self deny: (Q2Note parseSubject: 'a[#1:1:2]b' do: [:n :x | self error: 'no']).

	self assert: (Q2Note referenceIn: 'a[#p1:a]b') = 'p1:a'.
	self assert: (Q2Note subjectWithoutReference: 'a[#p1:a]b') = 'a b'.