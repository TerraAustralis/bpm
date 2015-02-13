calculating
niceYTickSizeAndNumTicksSmall: maxDataPoint
	| rescale newMax tickSizeAndNum |

	(maxDataPoint <= 0)  ifTrue:  [self error:  'Invalid Maximum Data Point'].
	newMax _ maxDataPoint.
	rescale _ 1.0.
	[newMax <= (self smallNumberScalingFactor * 10)] whileTrue:  [
		newMax _ newMax * 10.
		rescale _ rescale / 10.].
	tickSizeAndNum _ self niceYTickSizeAndNumTicksLarge: newMax.
	tickSizeAndNum at: 1 put: (tickSizeAndNum first * rescale).
	^tickSizeAndNum.