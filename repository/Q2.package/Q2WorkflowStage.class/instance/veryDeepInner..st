private
veryDeepInner: copier
	"Booleans: isClosed, isNew
	Shallow copy: gatekeepers
	" 
	super veryDeepInner: copier.
	workflow := workflow veryDeepCopyWith: copier.
	enterCriteria := enterCriteria veryDeepCopyWith: copier.
	exitCriteria := exitCriteria veryDeepCopyWith: copier.
	transitions  := transitions veryDeepCopyWith: copier.

	Q2CurrentMirror signal ifNotNil: [
			gatekeepers := gatekeepers veryDeepCopyWith: copier]
		ifNil: [
			gatekeepers := gatekeepers veryDeepCopyWith: copier "we need to do this so that we get new wrappers!"]