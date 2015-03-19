private
setNameOfFormElement: input 
	currentFormElementId := currentFormElementId + 1.
	input name: currentFormId asString , '-' , currentFormElementId asString.
	^ input