filters support
asStringCode: targetString
	"Return a string which can be used to access value from target's object by sending a message to it
	(for use by Q2FilterPredicate)"
	self subclassResponsibility