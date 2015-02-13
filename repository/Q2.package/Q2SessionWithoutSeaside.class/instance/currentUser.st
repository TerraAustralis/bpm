accessing
currentUser
	"If not explicitly set we assume we are running as the system user."

	^currentUser ifNil: [self model systemUser]