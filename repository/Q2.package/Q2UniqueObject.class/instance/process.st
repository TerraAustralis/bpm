permissions
process
	"All objects should know how to answer their process.
	This is the fallback method where we search based on our id."

	^self model findOwnerProcessFor: self