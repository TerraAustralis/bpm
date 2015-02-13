accessing
graphStatus

 	"status from the point of view of editing the process"

	 self isInbox ifTrue: [ ^ #inbox ].

	^ self status