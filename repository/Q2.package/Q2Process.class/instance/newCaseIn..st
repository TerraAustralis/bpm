cases
newCaseIn: aProcess
	"Create a new empty case to edit and possibly save.
	This could involve cloning a prototype.
	Use addCase: when it is ready to add."

	self flag: #q2todo. "clone prototype"

	^Q2Case newInProcess: aProcess