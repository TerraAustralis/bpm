as yet unclassified
reconnectIn: aModel
	super reconnectIn: aModel.
	formBuffer reconnectIn: aModel.

	"if association key is a symbol. then its a new field and symbol is a class name,
	if association key is an UID , then its an existing field"
	fieldBuffers := fieldBuffers collect: [ :each | 
		each key isSymbol ifTrue: [	(Smalltalk at: each key) new -> each value reconnectIn: aModel ]
		ifFalse: [ (aModel findObjectById: each key) -> each value reconnectIn: aModel  ]
	].