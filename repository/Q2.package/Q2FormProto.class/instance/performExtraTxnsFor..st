as yet unclassified
performExtraTxnsFor: aFormValue
	"Let each field possibly perform txns, unless they are readonly."

	self fieldsDo: [:f | f readOnly ifFalse: [f performExtraTxnsFor: aFormValue]]