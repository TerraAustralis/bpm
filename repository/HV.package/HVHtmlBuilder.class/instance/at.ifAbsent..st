private
at: var ifAbsent: block
	"Low level access to fields - parameters to GET or POST."

	^fields at: var ifAbsent: [^block value]