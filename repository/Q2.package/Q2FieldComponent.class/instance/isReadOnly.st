model access
isReadOnly
	"Is the field readonly OR has the component been marked as readonly?"

	^field readOnly or: [self state at: #readOnly ifAbsent: [false]]