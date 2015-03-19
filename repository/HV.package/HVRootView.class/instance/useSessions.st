defaults
useSessions
	"By default we check with viewClass if we have one,
	otherwise false."

	^viewClass ifNil: [false] ifNotNil: [viewClass useSessions]