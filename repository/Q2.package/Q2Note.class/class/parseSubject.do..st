as yet unclassified
parseSubject: subject do: aBlock
	"Parse subject line to find occurrences of:
		'[#' <case name> (':' <parent number>) ']'

	...and return aBlock evaluated with <case name> and <parent number> if found.
	Otherwise return false." 

	| content subs caseName parentNumber |
	content _ self referenceIn: subject.
	content ifNil: [^false].
	subs := content subStrings: ':'.
	subs size = 1 ifTrue: [ "no colon"
		caseName := subs first.
		(Q2Case validName: caseName)
			ifFalse: [Q2Log warn: 'Invalid case name in subject line: ', caseName, ' ignoring.'. ^false]
			ifTrue: [^aBlock value: caseName value: nil]].
	subs size > 2 ifTrue: [Q2Log warn: 'Invalid case reference (too many colons) in subject line: [#', content, '], ignoring.'. ^false].
	caseName :=  subs first.
	(Q2Case validName: caseName)
		ifFalse: [Q2Log warn: 'Invalid case name in subject line: ', caseName, ' ignoring.'. ^false]
		ifTrue: [
			parentNumber := subs last asInteger.
			parentNumber ifNil: [Q2Log warn: 'Invalid parent number in case reference: ', subs last, ' ignoring and adding note to case.'].
			^aBlock value: caseName value: parentNumber]