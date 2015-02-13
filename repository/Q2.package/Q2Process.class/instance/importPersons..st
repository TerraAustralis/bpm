persons
importPersons: aColl
	"Only add those not there already."

	| toImport |
	toImport := aColl difference: importedPersons.
	toImport do: [:person | self importPerson: person]