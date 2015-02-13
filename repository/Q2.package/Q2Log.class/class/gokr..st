logging shorthand
gokr: aString
	"An example of simple personal logging.
	All these log entries will end up under a sender called #gokr
	which makes it easy for other developers to filter it out."

	self instance debug: aString sender: #gokr