soap
uploadMirrorTransactions: aByteArray 
	"Call the server remotely."

	^self callServer: #uploadMirrorTransactions: with: {{ #a1. aByteArray }}