calculating
setNiceTimeYTicksFor: aChart maxPoint: maxPoint
			"Set the yTicks on the bar chart to be of the form  B * 10^k  where  (1 2 3 5) includes: B."
	| maxIntPoint yTickSizeAndNumTicks numYTicks yTicks yTick yTickSize |
	maxIntPoint _ maxPoint truncated.
	maxIntPoint = maxPoint ifFalse: [maxIntPoint _ maxIntPoint + 1].
	yTickSizeAndNumTicks _ self niceTimeYTickSizeAndNumTicks: maxPoint.
	yTickSize _ yTickSizeAndNumTicks at: 1.
	numYTicks _ yTickSizeAndNumTicks at: 2.
	yTicks _ Dictionary new.
	1 to: numYTicks  do:  [:index  |
		yTick _ (Duration seconds: (index * yTickSize) ).
		yTicks at: yTick put: yTick  asString.
		].
	aChart layoutOptions yTicks: yTicks.
	aChart layoutOptions yAxisMin: -0.0 max: yTickSize * numYTicks.
	^aChart.