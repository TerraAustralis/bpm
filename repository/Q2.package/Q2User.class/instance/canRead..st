testing
canRead: anObject
	"Can this user read this object?"

	| process |
	process := anObject process.
	^(self canAccess: process) and: [
		(self getAccessLevelFor: anObject in: process) >= Q2Permission read]