stages
newStageProbNew: probNew probClosed: probClosed
	| selector prob |
	
	selector := ((prob := rng next) < probNew)
		ifTrue: [#newStage]
		ifFalse: [
			(prob < (probNew + probClosed))
				ifTrue: [#closedStage]
				ifFalse: [#openStage].
			].
	^Q2MockWorkflowStage perform: selector.