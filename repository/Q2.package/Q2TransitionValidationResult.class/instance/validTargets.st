queries
validTargets
	"Return a Set of all targets that are valid (= do not have denials).
	First we collect all targets from the valid criteria, then we remove
	all targets that are found in the denials."

	validTargets ifNil: [
		validTargets := Set new.
		validCriteria do: [:criterion | validTargets addAll: criterion targets].
		self denialsDo: [:denial |  
			validTargets := validTargets copyWithoutAll: denial targets]].
	^validTargets