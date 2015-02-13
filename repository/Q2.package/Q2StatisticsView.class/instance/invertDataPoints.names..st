chart building
invertDataPoints: dataPoints names: names
	" dataPoints is a two dimensional table of data with a name for each row.
       invert the dataPoints data and use names as the names for the new rows (originally columns"

	| newPoints numEntries numPoints innerPoints innerPointsSize skip |
		
	numEntries _ names size.
	numPoints _ dataPoints size.
	innerPointsSize _ numEntries min: ((dataPoints at: 1) value size).
	skip _ numEntries - innerPointsSize.
	newPoints _ Array new: innerPointsSize.
	1 to: innerPointsSize do: [:index |
		newPoints at: index put: (Association key: (names at: index + skip) value: (OrderedCollection new: numPoints))].

	1 to: numPoints do: [:index |
		innerPoints _ (dataPoints at: index) value.
		(innerPoints size = innerPointsSize) ifFalse: [
			self error: 'Cannot invert data'].
		1 to: innerPoints size do: [:ind |
			(newPoints at: ind) value add: (innerPoints at: ind)].
		].

	newPoints do: [:each |
		each value: (each value asArray)].
	^newPoints