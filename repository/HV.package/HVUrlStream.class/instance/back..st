streaming
back: anInteger
	"Back up some steps in the stream."

	stream position: ((stream position - anInteger) max: 1)