clearup/setup
createDatabase
	"Create the database if missing. If we created it we return true, otherwise false."

	"self createDatabase"

	^(factory isLocal and: [factory isRepository not])
 		ifTrue: [
			MagmaRepositoryController create: factory root: Q2RepositoryRoot new.
			true]
		ifFalse: [false]