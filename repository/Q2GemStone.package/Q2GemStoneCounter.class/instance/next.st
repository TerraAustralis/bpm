counting
next

	"System beginTransaction.
	(UserGlobals at: #MyCounter)  incrementBy: 1.
	System commitTransaction."
	
	System persistentCounterAt: 1 incrementBy: 1.
	
	^self value.