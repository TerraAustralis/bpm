printing
displayForHistory
	^'Responsible set to ', (responsibleUser ifNotNil: [responsibleUser fullName] ifNil: ['!'])