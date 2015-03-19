as yet unclassified
contents
	|stream|
	stream _ ReadWriteStream on: String new.
	self printHtmlOn: stream.
	^ stream reset