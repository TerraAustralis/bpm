gathering stats
numOpenedCases: collectionOfMe
	| array |

	array _ Array new: collectionOfMe size.
	1 to: array size do: [:index |
		array at: index put: (collectionOfMe at: index) numOpenedCases].
	^array.