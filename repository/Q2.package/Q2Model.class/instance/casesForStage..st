cases
casesForStage: aStage
	"Return a reader for the cases in a given stage."

	^cases where: [:r | r read: #stage at: aStage]
		   orSelect: [:each | each stage = aStage ]