synch
disconnect
	super disconnect.
	destProcess ifNotNil: [ destProcess := destProcess id copy ].
	linkType ifNotNil: [ linkType := linkType id copy ].
	subjectField ifNotNil: [ subjectField := subjectField id copy ].
	descriptionField ifNotNil: [ descriptionField := descriptionField id copy ].
	" forms can't be nil. create an empty collection if so "
	forms ifNil: [ forms := OrderedCollection new ].
	forms := forms collect: [:f | f id copy ].