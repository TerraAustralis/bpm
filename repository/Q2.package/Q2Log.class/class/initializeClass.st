class initialization
initializeClass
	"self initializeClass"

	UseTranscript ifNil: [self useTranscript: true].
	self instance initialize