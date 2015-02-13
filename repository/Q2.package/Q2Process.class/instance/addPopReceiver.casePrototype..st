email
addPopReceiver: email casePrototype: aCase

	^popReceivers add: (Q2PopReceiver new email: email; casePrototype: aCase; yourself)