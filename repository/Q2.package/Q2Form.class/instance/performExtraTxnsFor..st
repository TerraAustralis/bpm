fields
performExtraTxnsFor: aFormValue
	"Let each field possibly perform txns, unless they are readonly."

	fields do: [:f | f readOnly ifFalse: [f performExtraTxnsFor: aFormValue]]