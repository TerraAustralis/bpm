initialize-release
createMockModel
	"This is the first mock session, create a model and put it in Q2Session for reuse."

	model := Q2Model basicNew.
	model initialize; bootStrap. "the model instvar must be set before running initialize"
	^model