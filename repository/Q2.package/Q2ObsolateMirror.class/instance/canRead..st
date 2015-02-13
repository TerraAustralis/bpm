synch
canRead: anObject
	"If the owner can, yes."

	self flag: #q2todo. "multiple owners? how about non personal mirrors?"
	^owner canRead: anObject