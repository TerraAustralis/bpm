private
writeOn: aStream
	aStream nextPutAll: '[', self label, ']'; cr.
	self associationsDo:
		[:assoc | aStream nextPutAll: assoc key, '=', (assoc value asString ifNil: ['']); cr]