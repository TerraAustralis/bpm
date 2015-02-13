accessing
timestampApplied: anObject 
	"I accept a timeStamp only once."

	self flag: #q2todo. "Do we really have to accept it only once?"
	timestampApplied ifNil: [ timestampApplied := anObject ]