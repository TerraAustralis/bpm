as yet unclassified
signal
	"Only signal if it was someone else that did it."

	self currentUser = assigned ifFalse: [super signal]