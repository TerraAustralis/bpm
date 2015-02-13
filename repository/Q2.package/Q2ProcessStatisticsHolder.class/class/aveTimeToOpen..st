gathering stats
aveTimeToOpen: collectionOfMe
	| array |

	array _ Array new: collectionOfMe size.
	1 to: array size do: [:index |
			| aMe numCases |
		aMe _ collectionOfMe at: index.
		numCases _ aMe numOpenedCases.
		array at: index put: (
			(numCases = 0) 
				ifTrue: [0]
				ifFalse: [(aMe totalTimeToOpen / numCases) asSeconds]).
		].
	^array.