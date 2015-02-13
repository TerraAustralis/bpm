initialize-release
initialize
	mutex := Q2Platform semaphoreClass forMutualExclusion.
	queuesMutex := Q2Platform semaphoreClass forMutualExclusion.
	nestingLevel := 0.