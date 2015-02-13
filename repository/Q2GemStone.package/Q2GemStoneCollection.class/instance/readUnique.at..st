methods
readUnique: index at: key
	"Return a single object or nil. Multiple hits cause error."

	| indexes result sz |
	
	indexes := self _findIndexesWithPath: (Array with: index).
	result := (indexes at:1) asQueryEvaluator findAllValuesEqualTo: key.
	
	self assert: (result notNil). "is this some GS bug??"
	(sz := result size) > 1 ifTrue: [ self error: 'Multiple objects found with the same key when expecting only one'].
	^ sz = 1 ifTrue: [ result at:1 ] ifFalse: [nil]