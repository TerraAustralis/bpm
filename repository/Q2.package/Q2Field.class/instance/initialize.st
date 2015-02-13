initialize-release
initialize

	super initialize.
	readOnly := false.
	nilForDefault := false.
	"By default , let field use fieldAt: message to access target's value.
	Critical: accessor ivar must be initialized to non-nil value!
	"
	self withTargetFieldAccessor.