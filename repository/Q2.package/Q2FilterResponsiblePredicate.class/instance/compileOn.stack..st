compilation
compileOn: aStream stack: filterStack
	"Return our code within parenthesis."

	value ifNil: [aStream nextPutAll: '(true)'] ifNotNil: [
		aStream nextPutAll: '(case responsible equals: (values at: ', (filterStack indexForValue: value) asString, '))']