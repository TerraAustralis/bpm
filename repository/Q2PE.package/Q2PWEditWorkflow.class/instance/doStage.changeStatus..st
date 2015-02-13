actions
doStage: stage changeStatus: to

	stage graphStatus = to asSymbol ifTrue: [ ^self ].

	self controller doGraphStage: stage setStatus: to asSymbol