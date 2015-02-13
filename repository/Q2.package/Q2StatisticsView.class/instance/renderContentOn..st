rendering
renderContentOn: html
		| barChart dataPoints invertedDataPoints totalsNames innerPointsSize dayNames dayTickNames indexOfFirstStatsDay |
	self renderIntroductionOn: html.
	html render: self setupControls.
	html horizontalRule.
	"html render: tabBook."

	dataPoints _ statisticsHolder totalsStatsSelection: setupControls.
	innerPointsSize _ self innerPointsSize: dataPoints.
	dayNames _ OrderedCollection new addAll: DayNames; addAll: DayNames; yourself.
	indexOfFirstStatsDay _ (DateAndTime yesterday dayOfWeek) + 8 - innerPointsSize.		"... + 7 - (innerPointsSize - 1)"
	dayTickNames _ dayNames copyFrom: indexOfFirstStatsDay to: indexOfFirstStatsDay + innerPointsSize - 1.
	"dayTickNames _ DayNames last: innerPointsSize."
	barChart _ self caseTotalsChartByType.	
	self loadBarChart: barChart dataPoints: dataPoints tickNames: dayTickNames.
	html space.
	html form:  [html render: barChart].
	
	barChart _ self caseTotalsChartByResolution.
	invertedDataPoints _ self invertDataPoints: dataPoints names: dayTickNames.
	totalsNames _ self dataPointNames: dataPoints.
	self loadBarChart: barChart dataPoints: invertedDataPoints tickNames: totalsNames.
	html space.
	html form:  [html render: barChart].
	html horizontalRule.


	dataPoints _ statisticsHolder averageStatsSelection: setupControls.
	barChart _ self aveTimeChartByType.	
	self loadTimeBarChart: barChart dataPoints: dataPoints tickNames: dayTickNames.
	html space.
	html form:  [html render: barChart].
	
	barChart _ self aveTimeChartByResolution.
	invertedDataPoints _ self invertDataPoints: dataPoints names: dayTickNames.
	totalsNames _ self dataPointNames: dataPoints.
	self loadTimeBarChart: barChart dataPoints: invertedDataPoints tickNames: totalsNames.
	html space.
	html form:  [html render: barChart].