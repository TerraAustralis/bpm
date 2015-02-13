as yet unclassified
initializeComparableClasses
	" These are a list of classes where the #= works well,
	So no need to compare their contents."
	
	comparableClasses :=  IdentitySet new.
	{ String.  UUID. SmallInteger. Float } do: [ :each |
		comparableClasses addAll: each withAllSubclasses  ].