accessing
tableCaseForm
	"If not explicitly set we ask the user for a default table."

	^tableCaseForm ifNil: [self currentUser tableCaseForm]