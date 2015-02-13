finding
findFormById: anId
	"Find our form or imported wrapped form."

	^forms detect: [:f | f id = anId] ifNone: [
		importedForms detect: [:w | w unwrapped id = anId] ifNone: [nil]]