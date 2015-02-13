transactions-private
applyTxn: aTxn 
	" Apply a local transaction, "

	| result |
	result := self commit: [
		[ aTxn validate; do; postDo ]
			on: Q2CurrentTxn
			do: [:notification |
				notification resume: aTxn ].
		self addTxn: aTxn]
		txn: aTxn.
	"result ifNil: [self halt]. Bring up the debugger."
	(result notNil and: [ self isMirror not ]) ifTrue: [ aTxn postMasterOutsideTransaction].
	Q2Log info: aTxn printString, ' applied. result: ', result printString.
	^aTxn