accessing
subject: anObject
	"Do not allow an empty string, nor nil."

	subject := (anObject isNil or: [anObject isEmpty]) ifTrue: ['<no subject>'] ifFalse: [anObject]