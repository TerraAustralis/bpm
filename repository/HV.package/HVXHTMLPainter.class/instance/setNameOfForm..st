private
setNameOfForm: form 
	currentFormId := currentFormId + 1.
	form name: currentFormId asString.
	currentFormElementId := 0.
	^ form