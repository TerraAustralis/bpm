email
importedUserOrPersonFor: aUserOrPerson
	aUserOrPerson isUser ifTrue: [
		^(self findUserNamed: aUserOrPerson username)
			ifNil: [self findOrImportPerson: aUserOrPerson person]]
		ifFalse: [
		^self findOrImportPerson: aUserOrPerson]