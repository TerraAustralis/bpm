seaside
getEditor
	"Check if the user has access to write in the form."

	form writeCheck ifNil: [^self getViewer].
	^Q2FormEditor model: self