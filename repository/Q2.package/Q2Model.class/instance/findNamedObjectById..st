forms
findNamedObjectById: anId
	"Look both here and in all processes."

	| |
	self flag: #q2todo.
	^(self findFormById: anId) ifNil: [
		(self findFormFieldById: anId)]