calculating
niceTimeYTickSizeAndNumTicksLarge: maxSeconds
	| intMax tickSize 
	 tickFactor divBy yTickSizeAndNumTicksLarge |

	tickFactor _ 5.		"affects number of yTicks on graph"
	(maxSeconds < 1)  ifTrue:  [self error:  'Invalid maximum data point'].
	intMax _ maxSeconds truncated.
	intMax < maxSeconds ifTrue: [intMax _ intMax + 1].
	(intMax > (tickFactor * SecondsInDay)) ifTrue: [
		yTickSizeAndNumTicksLarge _ (self niceYTickSizeAndNumTicksLarge: (maxSeconds alignedDiv: SecondsInDay)).
		yTickSizeAndNumTicksLarge at: 1 put: (yTickSizeAndNumTicksLarge at: 1) * SecondsInDay]
	ifFalse: [
		divBy _ tickFactor * SecondsInHour.
		(intMax > divBy) ifTrue: [
			tickSize _ (self smallestFactor24Min: (intMax alignedDiv: divBy)) * SecondsInHour]
		ifFalse: [
			divBy _ tickFactor * SecondsInMinute.
			tickSize _ (intMax > divBy)
				ifTrue: [(self smallestFactor60Min: (intMax alignedDiv: divBy)) * SecondsInMinute]
				ifFalse: [self smallestFactor60Min: (intMax alignedDiv: tickFactor)].
			].
		yTickSizeAndNumTicksLarge _ Array new: 2.
		yTickSizeAndNumTicksLarge at: 1 put: tickSize.
		yTickSizeAndNumTicksLarge at: 2 put: (intMax alignedDiv: tickSize).
		].
			
	^yTickSizeAndNumTicksLarge.