testing
isCaseEvent
	"Are all my events for the same single case?"

	^(events allSatisfy: [:event | event isCaseEvent])
		and: [(events collect: [:ev | ev case]) asSet size = 1]