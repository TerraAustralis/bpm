accessing-scripts
fileSelectors
	"we inherit our files whereas standard file libraries do not."
	| coll |
	coll _ super fileSelectors asIdentitySet. "IdentitySet new."
	(self class withAllSuperclasses copyUpTo: WAFileLibrary)  do:
		[:aClass | coll addAll: aClass selectors].

	^ (coll
		select: [ :each | self isFileSelector: each ])
		removeAllFoundIn: self nonFileSelectors;
		yourself