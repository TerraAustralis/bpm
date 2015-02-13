users
importUsers: aColl
	"Only add those not there already."

	| toImport |
	toImport := aColl difference: importedUsers.
	toImport do: [:user | self importUser: user]