printing
displayForHistory
	^note parent
		ifNil: ['Note "', note subject, '" added.']
		ifNotNil: ['Note "', note subject, '" added in reply to: "', note parent subject, '"']