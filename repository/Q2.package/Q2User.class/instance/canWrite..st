testing
canWrite: anObject
	"Can this user write this object?"

	| process |
	process := anObject process.
	^(self canAccess: process) and: [
		(self getAccessLevelFor: anObject in: process) >= Q2Permission write]