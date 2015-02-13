chart building
aveTimeChartByType
	caseAveTimeChartByType isNil ifTrue: [
		caseAveTimeChartByType := PKChart newBarChart.
		caseAveTimeChartByType rendererOptions drawYAxis: false].
	^caseAveTimeChartByType