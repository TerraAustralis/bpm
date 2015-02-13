tests
testConcurrentSearching

	| queue count |
	queue := SharedQueue new.
	count := 100.
	1 to: count do: [ :i |
		self index: 'test', i asString with: 'test', i asString ].
	1 to: count do: [ :i |
		[ self search: 'test', i asString shouldFind: {'test', i asString}.
		  queue nextPut: i ]
			fixTemps;
			fork ].
	count timesRepeat: [ " wait for finish searchin " queue next ]