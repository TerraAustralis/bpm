as yet unclassified
undo: txn

	"undoing an undo, we return a copy of the original txn"
	(txn class = self) ifTrue: [ ^ txn undone copy ].

	^ self basicNew undone: txn; initialize