as yet unclassified
disconnect
	super disconnect.
	formBuffer disconnect.

	" fieldBuffers is collection of elements Q2Field -> Q2FormBuffer 
	if we disconnecting an existing form field, then we put an ID, if its a new field, we put a class name"
	
	fieldBuffers := fieldBuffers collect: [ :each | 
		(form notNil and: [form fields includes: each key]) ifTrue: [ each key id copy -> each value disconnect ]
		ifFalse: [ each key class name -> each value disconnect ]
	].