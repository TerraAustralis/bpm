*q2-seaside ui
targettingPoints

	"for an edge we return the nodes except for the first and last, unless these are all we have,
	in which case we make up a middle!"

	| vertices |

	vertices := self vertices ifNil: [ fromNode targettingPoints , toNode targettingPoints ].

	vertices size = 2 ifTrue: [ ^ Array with: ((vertices first + vertices last) // 2) ].

	^ vertices copyFrom: 2 to: (vertices size - 1)