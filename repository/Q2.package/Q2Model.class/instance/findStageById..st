users
findStageById: id
	"Find a stage."

	| stage |
	processes do: [:proc |
		stage := proc workflow findStageById: id.
		stage ifNotNil: [^stage]].
	^nil