compilation
compileOn: aStream stack: filterStack
	"Return our code within parenthesis."

	aStream nextPutAll: '(case process includesAnyOf: (values at: ', (filterStack indexForValue: value) asString, '))'

"	filterStack useQueries ifTrue: [
		aStream nextPutAll: '(case process includesAnyOf: (values at: ', (filterStack indexForValue: value) asString, '))']
		ifFalse: [
		aStream nextPutAll: '((values at: ', (filterStack indexForValue: value) asString, ') includes: case process)']
"