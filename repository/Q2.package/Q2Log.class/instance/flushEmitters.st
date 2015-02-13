logging
flushEmitters
	emitters do: [:e | e isBlock ifFalse: [(e respondsTo: #flush) ifTrue: [e flush]]]