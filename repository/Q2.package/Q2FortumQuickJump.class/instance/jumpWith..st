render
jumpWith: aComp

	| case num proc cases |
	num := aComp valueAt: #number.
	num ifNil: [ aComp inform: 'You need to specify a number']
		ifNotNil: [
			proc := aComp model findProcessNamed: 'Customer'.
			proc ifNil: [aComp inform: 'Can not find customer process, contact administrator.'].
			cases := proc cases.
			case := proc readCheck: (cases readUnique: #orgNumber at: num).
			case
				ifNil: [ aComp inform: 'No customer with org number ', num, ' found.']
				ifNotNil: [aComp parent viewCase: case]]