instance creation
on: aModel parent: aParent
	"Create a new view on a model and with aParent as parent view.
	This is normally done on the fly for each request."

	^(super on: aModel) initializeWith: aParent; yourself