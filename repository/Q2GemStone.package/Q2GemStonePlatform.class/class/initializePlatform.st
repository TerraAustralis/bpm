methods
initializePlatform
	Q2Platform beginTransaction.
	self configureGemStone.

	"configure GraphViz path"
	GemStoneUnixGraphVizGenerator initialize.
	
	Q2Platform commitTransaction.