testing
canBeResponsibleFor: aCase
	"As long as I am not only a reporter and I can also write the case (or I am Nobody)."

	^self isReporter not and: [(self canWrite: aCase) or: [self isNobody]]