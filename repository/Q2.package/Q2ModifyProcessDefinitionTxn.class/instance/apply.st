transactions
apply
	"Perform the txn."

	| codeHolder |
	codeHolder := Q2CodeHolder new code: definition.
	codeHolder executeIn: process.
	codeHolder result ifNotNilDo: [:res |
		result := res printStringLimitedTo: 1000].
	codeHolder error ifNotNilDo: [:err |
		error := err printStringLimitedTo: 1000.
		Q2AbortTransaction signal].