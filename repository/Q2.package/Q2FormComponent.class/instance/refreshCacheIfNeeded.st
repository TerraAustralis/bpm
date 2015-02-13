as yet unclassified
refreshCacheIfNeeded

	cacheRefreshed
		ifFalse:  [self refreshCache].
	cacheRefreshed := false.		"The only time I do not refresh the cache is after an  #inititializeWith: "