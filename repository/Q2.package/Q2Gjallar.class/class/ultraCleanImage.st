prepare image
ultraCleanImage
	"If all else fails. This borrows some tricks from ReleaseBuilder."

	"self ultraCleanImage"

	CommandHistory resetAllHistory. "stuff can hang around in commands..."
	ReleaseBuilder new cleanUpChanges; finalCleanup