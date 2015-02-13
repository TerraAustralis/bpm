accessing
workflow: anObject
	workflow ifNotNil: [
		self removeObjectById: workflow].
	workflow := anObject.
	self addObjectById: workflow