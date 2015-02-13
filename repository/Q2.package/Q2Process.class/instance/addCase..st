cases
addCase: aCase
	"Add it to the workflow (start stage), the model with the global
	collection and finally in our own collection."

	workflow addCase: aCase. "before model so that the stage is set for indexing"
	model addCase: aCase. "before cases so that id gets a value before indexing"
	cases add: aCase.
	^aCase