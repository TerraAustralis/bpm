synch
reconnectIn: aModel
	super reconnectIn: aModel.
	destProcess ifNotNil: [destProcess := aModel findObjectById: destProcess ].
	linkType ifNotNil: [ linkType := aModel findObjectById: linkType ].
	subjectField ifNotNil: [ subjectField := aModel findObjectById: subjectField ].
	descriptionField ifNotNil: [ descriptionField := aModel findObjectById: descriptionField ].
	" use forms of process "
	forms := forms collect: [:f | owner findFormById: f].