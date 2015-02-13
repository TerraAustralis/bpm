methods
startSeaside
	"Register the Gjallar app with Seaside on the GemStone platform."
	
	Q2Session selfForStatisticsSessionClass. "clearing any Mock session class"
	self configureGemStone.
	Q2Gjallar timeStarted: DateAndTime now.