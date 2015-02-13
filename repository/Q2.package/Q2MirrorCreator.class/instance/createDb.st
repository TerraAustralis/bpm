as yet unclassified
createDb
	"Create dir and clean db in it."

	| dir |
	dir _ FileDirectory on: self databaseFullPath.
	dir exists ifTrue: [dir recursiveDelete].
	MagmaRepositoryController create: self databaseFullPath root: Q2RepositoryRoot new