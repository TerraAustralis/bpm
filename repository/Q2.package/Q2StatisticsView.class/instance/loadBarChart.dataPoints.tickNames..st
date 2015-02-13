chart building
loadBarChart: aChart  dataPoints: dataPoints  tickNames: tickNames
	"I Load barChart 'aChart' with data from dataPoints.  I use tickNames to label the bars of the bar chart.
	I also generate some nice yTicks for the chart"
		| minAndMax |
	minAndMax _ self loadBarChartBasic: aChart  dataPoints: dataPoints  tickNames: tickNames.
	^self setNiceYTicksFor: aChart minPoint: minAndMax first maxPoint: minAndMax second.