methods
useGemStone
	"Q2Platform useGemStone"
	
	Q2Platform beginTransaction.
	self current: Q2GemStonePlatform.
	Q2Platform commitTransaction.