as yet unclassified
load: aCustomObjectType
	| file firstLine types resultObjects values |
	file := Q2Platform workingDirectory oldFileOrNoneNamed: self fileName.

	resultObjects := OrderedCollection new.
	types := OrderedCollection new.
	file ifNotNil: [
		"First line defines the types"
		firstLine := file nextLine readStream.
		aCustomObjectType fields do: [:each | | type |
			[type := (firstLine upTo: self separator) withBlanksTrimmed asUppercase. type = ''] whileTrue.
			(type beginsWith: 'INT') ifTrue: [types add: #integer] ifFalse:
			[(type  beginsWith: 'DATETIME') ifTrue: [types add: #datetime] ifFalse:
			[(type beginsWith: 'STR') ifTrue: [types add: #string]
			]]
		].
		[file atEnd] whileFalse: [| newLine | 
			newLine := file nextLine readStream.
			values := OrderedCollection new.
			types do: [:each | | field |
				[field := (newLine upTo: self separator) withBlanksTrimmed. field = ''] whileTrue.
				(each = #integer) ifTrue: [values add: field asInteger] ifFalse:
				[(each = #datetime) ifTrue: [values add: field asDateAndTime] ifFalse:
				[values add: field "asString"
				]] 
			].
			resultObjects add: (Q2CustomObject values: values asArray).
		]
	].
	aCustomObjectType updateFrom: resultObjects.