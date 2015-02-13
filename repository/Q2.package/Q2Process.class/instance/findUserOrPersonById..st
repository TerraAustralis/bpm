finding
findUserOrPersonById: anId
	"Returns the wrapped user for given user id."

	^importedUsers detect: [:u | u unwrapped id = anId] ifNone: [
		importedPersons detect: [:p | p unwrapped id = anId] ifNone: [nil]]