email
findOrImportPerson: aPerson
	^(self findPersonByEmail: aPerson email)
		ifNil: [^self importPerson: aPerson]