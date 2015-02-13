version
version
	"This is the version name, the target release name in major.minor followed
	by a sequence number for the revision. When the release is actually
	finalized we drop the revision number."

	"self version"

	^self release, '.dev'
	
	", ((MCPackage named: 'Q2') workingCopy ancestry ancestors first name findTokens: '.') last"