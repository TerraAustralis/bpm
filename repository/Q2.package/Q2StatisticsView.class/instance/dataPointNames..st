chart building
dataPointNames: dataPoints
	| names |
		
	names _ Array new: dataPoints size.
	1 to: names size do: [:index |
		names at: index put: (dataPoints at: index) key].
	^names