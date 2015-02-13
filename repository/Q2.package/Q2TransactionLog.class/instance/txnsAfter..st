as yet unclassified
txnsAfter: aNumber
	"Return all txns numbered higher than aNumber in a sorted OrderedCollection."

	^(transactions
		where: [ :each | each number > aNumber ]) 
			asOrderedCollection sortBy: [ :a :b | a number < b number ]