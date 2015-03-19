instance creation
on: aModel
	"Create a new view on a model.
	We set the model before initializeing so that it
	can use the model."

	^super basicNew model: aModel; initialize; yourself