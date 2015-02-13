as yet unclassified
apply
	"Perform the txn."

	| codeHolder |
	codeHolder := Q2CodeHolder new code: definition.
	codeHolder executeIn: self model.
	codeHolder result ifNotNil: [
		result := codeHolder result printStringLimitedTo: 1000].
	codeHolder error ifNotNil: [
		error := codeHolder error printStringLimitedTo: 1000]