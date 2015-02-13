hierarchy
main
	"All the way up."

	^parent ifNil: [self] ifNotNil: [parent main]