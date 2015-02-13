render
jumpWith: aComp

	| case num |
	num := aComp valueAt: #number.
	num ifNil: [ aComp inform: 'You need to specify a case number']
		ifNotNil: [
			case := aComp model findCaseNamed: num.
			case
				ifNil: [ aComp inform: 'No case with number ', num, ' found.']
				ifNotNil: [aComp parent viewCase: case]]