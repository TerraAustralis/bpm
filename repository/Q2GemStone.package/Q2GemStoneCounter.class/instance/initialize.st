initialize-release
initialize

	super initialize.
	
	"System beginTransaction.
	UserGlobals at: #MyCounter put: RcCounter new.
	System commitTransaction."
	
	System persistentCounterAt: 1 put: 0.