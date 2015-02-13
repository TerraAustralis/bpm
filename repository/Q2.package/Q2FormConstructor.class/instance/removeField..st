as yet unclassified
removeField: fld
	fields remove: fld.
	fld key isFieldGroup ifTrue: [ | opposite | 
		opposite:= fields detect: [:each | 
			each key isFieldGroup and:  
				[each key isBegin not = fld key isBegin]
			]. "ifNone: [] -- impossible"
		fields remove: opposite.
	].