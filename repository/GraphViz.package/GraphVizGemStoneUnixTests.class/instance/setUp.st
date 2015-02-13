setUp-tearDown
setUp

	"graph := GraphViz new."
	graph := self historyOfSmalltalk.
	graph generatorClass: GemStoneUnixGraphVizGenerator.