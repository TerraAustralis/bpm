as yet unclassified
applyPendingTxns
	"Apply pending master transactions on mirror.
	Return false early if a txn fails due to conflict.
	If all are applied, return true."

	| txns |
	Q2Log debug: 'Applying pending txns'.
	txns := self downloadTxnsFrom: self lastMasterTxnNumber.
	[ [txns do: [:txn | 
		| result |
		result := self applyMasterTxnOnMirror: (txn reconnectIn: self).
		Q2Log info: txn printString, ' applied from master. result: ', result printString. ] ]
		on: Error 
		do: [:ex |
			Q2Log error: 'A transaction couldn''t be applied. Error: ', ex printString.
			self halt. 
			^false ].
	] ensure: [self runEvents].
	Q2Log debug: 'Pending txns successfully applied'.
	^true