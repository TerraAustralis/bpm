magma
commitManually: aBlock
	"Instead of using #commit: we do it manually. This way the block
	can abort, perform one or several local commits and then the code
	below will not try to commit again afterwards."

	| result |
	 	
	self magmaSession abort. 

	result := aBlock value.
	self magmaSession inTransaction ifTrue: [
		Q2Log warn: self magmaSession printString, ': committing an uncommited magma transaction.'.
		self magmaSession commit ].
	^result