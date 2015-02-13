logging shorthand
crap: aString
	"Short hand for typical printf littering.
	All these log entries will end up under a sender called #crap."

	self instance debug: aString sender: #crap