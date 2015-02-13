counting
value

	| value |

	"Is a transaction needed here? To sync with the repository?"
	"System beginTransaction.
	value := UserGlobals at: #MyCounter.
	System abortTransaction."
	
	value := System persistentCounterAt: 1.

	^value