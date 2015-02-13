*q2-serialization
install: anObject atIvar: index
	" The Q2MirrorCreator dispatches the installation of ivars.
	The return value is used to decide that this ivar should or should not be visited"

	self instVarAt: index put: anObject.
	^true " we should visit our ivars by default "