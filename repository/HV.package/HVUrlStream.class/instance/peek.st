streaming
peek
	"Return the next path part without moving forward
	in the stream. nil is used as a last element marker."

	^self decode: stream peek