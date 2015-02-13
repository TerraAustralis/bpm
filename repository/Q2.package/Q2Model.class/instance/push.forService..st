services
push: anObject forService: aService
	"Push an object on the service queue for the given service.
	If the service does not want duplicates we do not add the object
	if it is already in the queue."

	| collection |
	self commit: [
		serviceQueues ifNil: [serviceQueues := Dictionary new].
		collection := serviceQueues at: aService ifAbsentPut: [self session dbSession newDBCollection].
		(aService allowDuplicates or: [(collection includes: anObject) not])
			ifTrue: [collection add: anObject]]