chart building
caseTotalsChartByType
	caseTotalsChartByType isNil ifTrue: [
		caseTotalsChartByType := PKChart newBarChart.
		caseTotalsChartByType rendererOptions drawYAxis: false].
	^caseTotalsChartByType