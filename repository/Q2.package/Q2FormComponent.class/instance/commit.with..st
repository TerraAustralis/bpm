set and get
commit: key with: value
	"Commit the value to the model. If we are not buffered
	then we presume the key is a selector."

	isBuffered
		ifFalse: [model perform: (key, ':') asSymbol with: value]
		ifTrue: [model commit: key with: value]