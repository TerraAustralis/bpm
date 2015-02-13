chart building
aveTimeChartByResolution
	caseAveTimeChartByResolution isNil ifTrue: [
		caseAveTimeChartByResolution := PKChart newBarChart.
		caseAveTimeChartByResolution rendererOptions drawYAxis: false].
	^caseAveTimeChartByResolution