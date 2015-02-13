soap
downloadTransactionsFrom: number for: aMirrorDefinition
	"Call the server remotely."

	^self callServer: #downloadTransactionsFrom:for: with: {
		{ #a1. number }.
		{ #a2. aMirrorDefinition id asString } }