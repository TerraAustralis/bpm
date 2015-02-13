accessing
graphStatusOptions

 	"list of possible status' that a given stage may have from the point of view of editing the process"

	self isInbox ifTrue: [ ^ nil ].

	^ #(new open closed)