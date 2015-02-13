magma
initializeInDBSession: aDBSession
	"Add and return a newly initialized model instance from the db."

	| model |
	model := Q2Model basicNew.
	aDBSession root model: model.
	model initialize.
	^model