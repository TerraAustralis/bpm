as yet unclassified
stop
	"self stop"
	self subclasses do: [:sub | sub allInstances do: [:instance | instance unregister]]