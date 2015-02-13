initialize-release
initialize

	super initialize.
	name ifNil: [name := ''].
	description ifNil: [ description := ''].
	wikiPage := Q2WikiPage source: ''