calculating
niceTimeYTickSizeAndNumTicks: maxDataPoint
	"compute a time based number of yTicks and yTick size that displays well on a bar chart based on highest point plotted."
	^maxDataPoint <= self smallNumberScalingFactor  
		ifTrue:  [self niceYTickSizeAndNumTicksSmall: maxDataPoint]
		ifFalse:  [self niceTimeYTickSizeAndNumTicksLarge: maxDataPoint]