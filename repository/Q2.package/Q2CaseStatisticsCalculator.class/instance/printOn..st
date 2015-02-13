printing
printOn: aStream

	aStream nextPutAll: self class name; cr.
	aStream nextPutAll: 'wasCreated: ', wasCreated asString; cr.
	aStream nextPutAll: 'wasOpened: ', wasOpened asString; cr.
	aStream nextPutAll: 'wasClosed: ', wasClosed asString; cr.
	aStream nextPutAll: 'wasReopened ', wasReopened asString; cr.
	aStream nextPutAll: 'isOpen: ', isOpen asString; cr.

	aStream nextPutAll: 'timeToOpen: ', timeToOpen asString; cr.
	aStream nextPutAll: 'periodOpen: ', periodOpen asString; cr.
	aStream nextPutAll: 'timeToClose: ', timeToClose asString; cr.
	aStream nextPutAll: 'timeToSetResponsible: ', timeToSetResponsible asString; cr.
	aStream nextPutAll: 'timeToResolve: ', timeToResolve asString; cr.
	aStream nextPutAll: 'timeToValidateResolution: ', timeToValidateResolution asString; cr.