actions
cancelCache
	"Cancel cache in all tabs."

	editors ifNotNil: [editors do: [:c | c isViewer ifFalse: [c cancelCache]]]