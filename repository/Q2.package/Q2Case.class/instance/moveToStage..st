workflow
moveToStage: aStage
	"Move case to new stage. Constraints should already have been checked."

	stage removeCase: self.
	aStage addCase: self