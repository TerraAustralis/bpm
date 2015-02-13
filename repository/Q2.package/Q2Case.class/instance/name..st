initialize-release
name: aString
	" We moved moveAttachements to Q2CreateCaseTxn >> #apply,
	because the statement below, is not true:

	  Set the name of this case. This is done only once, when the
	case is added to the model."

	name := aString