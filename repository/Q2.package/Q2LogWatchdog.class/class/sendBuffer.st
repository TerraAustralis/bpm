as yet unclassified
sendBuffer
	"Send the buffer, reset timer, empty buffer."

	self sendMessage: Buffer contents.
	Timer := Q2TimeStamp now asInteger asInteger + 60.
	Buffer := String new writeStream