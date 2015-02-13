copying
oldveryDeepInner: deepCopier

	super veryDeepInner: deepCopier.
	"cases _ MagmaCollection new."
	"workflow _ workflow"
	"isEnd _ isEnd"
	transitions _ transitions veryDeepCopyWith: deepCopier.
	enterCriteria _ enterCriteria veryDeepCopyWith: deepCopier.
	exitCriteria _ exitCriteria veryDeepCopyWith: deepCopier.