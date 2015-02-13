as yet unclassified
doNewTransitionFrom: a to: b

	self applyTxn: (Q2CreateTransitionTxn new
				from: a;
				to: b).