synch
postCopy
	"Make sure we get real copies. This is used
	when building mirrors. The id is immutable so no need to copy.
	MaCalendarTime>>copy does not go deep enough."

	timestampCreated := timestampCreated veryDeepCopy.
	id := id copy