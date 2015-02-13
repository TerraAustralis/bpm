calculating
niceYTickSizeAndNumTicksLarge: maxDataPoint
	| rescale intMax intMaxKeep numTicks lastTick tickSize |

	(maxDataPoint < 1)  ifTrue:  [self error:  'Invalid maximum data point'].
	intMax _ maxDataPoint truncated.
	intMax < maxDataPoint ifTrue: [intMax _ intMax + 1].
	intMaxKeep _ intMax.
	rescale _ 1.
	[intMax >= self largeNumberScalingFactor] whileTrue:  [
		intMax _ intMax // 10.
		rescale _ rescale * 10.].
	tickSize _ (self tickSizeLargeFor: intMax) * rescale.
	lastTick _ intMaxKeep alignedTo: tickSize.
	numTicks _ lastTick / tickSize.
	^Array with: tickSize with: numTicks.