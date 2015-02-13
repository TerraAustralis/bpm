accessing
graphStatusSet: s

 	"set the stage status from the point of view of editing the process"

	s == #new ifTrue: [ self isNew: true. self isClosed: false. ^ self].
	s == #closed ifTrue: [ self isNew: false. self isClosed: true . ^ self].
	s == #open ifTrue: [ self isNew: false. self isClosed: false. ^ self ].