accessing
processes
	"If not set, and we have a user - then use all processes."

	((processes isEmptyOrNil) and: [self user notNil]) ifTrue: [^self user processes].
	^processes