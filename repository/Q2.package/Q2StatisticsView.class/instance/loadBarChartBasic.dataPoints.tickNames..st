chart building
loadBarChartBasic: aChart  dataPoints: dataPoints  tickNames: tickNames
	"I Load barChart 'aChart' with data from dataPoints.  I use tickNames to label the bars of the bar chart"
		| dataset minPoint maxPoint nowPoints statName |
	"minPoint and maxPoint are the lowest and highest points to be plotted.  They are needed to plot chart nicely"
			
	aChart width: 1000; height: 300.
	aChart layout initialize.		
	((dataPoints = nil) or: [dataPoints size = 0])  ifTrue: [		"Adds some dummy values for a blank chart"
		nowPoints _ #(300).
		maxPoint _ 300.
		minPoint _ 0.
		]

	ifFalse:  [
		maxPoint _ 0.
		minPoint _ dataPoints anyOne value first.
		dataPoints  do:  [:assoc |
			statName _ assoc key.
			nowPoints _ assoc value.
			maxPoint _ maxPoint max: (nowPoints detectMax: [:each | each]).
			minPoint _ minPoint min: (nowPoints detectMin: [:each | each]).
			dataset _ PKDataset new name: statName;  addAll: nowPoints; yourself.
			aChart layout addDataset: dataset.
			].
		].

	aChart renderer: PKSweetCanvasRenderer new.
	aChart rendererOptions paddingLeft: 60 right: 20 top: 10 bottom: 30.
	self loadBarChartXTicks: aChart tickNames: tickNames.
	^Array with: minPoint with: maxPoint.