initialize-release
buttons
	"Lazily initialized."

	buttons ifNil: [self addSaveButton; addCancelButton].
	^buttons