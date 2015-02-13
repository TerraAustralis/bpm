testing
isMirror
	"self model isMirror"
	"instead: this data is cached for us out of the db, so that we can know without a db access"

	^self session info isMirror