printing
printHtmlOn: aStream
	associations ifNotNil:
		[associations do:
			[:assoc |
			self printAttribute: assoc on: aStream]].