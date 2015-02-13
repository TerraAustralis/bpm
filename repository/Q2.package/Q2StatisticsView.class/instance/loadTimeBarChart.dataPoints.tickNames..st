chart building
loadTimeBarChart: aChart  dataPoints: dataPoints  tickNames: tickNames
	"I Load barChart 'aChart' with data from dataPoints.  I use tickNames to label the bars of the bar chart.
	I also generate some nice time based yTicks for the chart"
	| minAndMax |
	minAndMax _ self loadBarChartBasic: aChart  dataPoints: dataPoints  tickNames: tickNames.
	^self setNiceTimeYTicksFor: aChart minPoint: minAndMax first maxPoint: minAndMax second.