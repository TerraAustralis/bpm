accessing
digestSubscriptions: anObject
	(digestSubscriptions = anObject) ifFalse: [digestNextSend := 0.].
	digestSubscriptions := anObject.