chart building
loadBarChartXTicks: aChart tickNames: tickNames
	"add tickNames to chart"

		| xTicks |
	xTicks _ Dictionary new.
	tickNames doWithIndex:  [:name :index  |
		xTicks at: index - 1 put: name].
	aChart layoutOptions xTicks: xTicks.