chart building
caseTotalsChartByResolution
	caseTotalsChartByResolution isNil ifTrue: [
		caseTotalsChartByResolution := PKChart newBarChart.
		caseTotalsChartByResolution rendererOptions drawYAxis: false].
	^caseTotalsChartByResolution