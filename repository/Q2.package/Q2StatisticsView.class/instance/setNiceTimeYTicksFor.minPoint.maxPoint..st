calculating
setNiceTimeYTicksFor: aChart minPoint: minPoint  maxPoint: maxPoint
		| maxIntPoint yTickSizeAndNumTicks numYTicks yTicks yTick yTickSize zeroTickPoint |

	maxIntPoint _ maxPoint truncated.
	maxIntPoint = maxPoint ifFalse: [maxIntPoint _ maxIntPoint + 1].
	minPoint * 20 >= maxIntPoint 
		ifTrue: [^self setNiceTimeYTicksFor: aChart maxPoint: maxPoint].
	yTickSizeAndNumTicks _ self niceTimeYTickSizeAndNumTicks: maxPoint.
	yTickSize _ yTickSizeAndNumTicks at: 1.
	numYTicks _ yTickSizeAndNumTicks at: 2.
	yTicks _ Dictionary new.
	zeroTickPoint _ (maxIntPoint asFloat / 20.0) negated.
	yTicks at: 0 put: 0.
	1 to: numYTicks  do:  [:index  |
		yTick _ (Duration seconds: (index * yTickSize) ).
		yTicks at: yTick put: yTick asString.
		].
	aChart layoutOptions yTicks: yTicks.
	aChart rendererOptions drawXAxis: true.
	aChart layoutOptions yAxisMin: zeroTickPoint max: yTickSize * numYTicks.
	^aChart.


	"Set the yTicks on the bar chart to be of the form  B * 10^k  where  (1 2 3 5) includes: B."
	"Also moves the y-axis slightly above the bottom line of the chart if the smallest value charted
      is less that 5% of the maximum value charted.  Otherwise the chart can look odd."