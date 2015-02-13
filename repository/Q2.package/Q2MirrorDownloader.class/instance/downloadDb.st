as yet unclassified
downloadDb
	"Downloads and unzips a mirror from the Q2 server."

	| platformName |	
	platformName := SmalltalkImage current platformName.
	platformName = 'Win32' ifTrue: [ self downloadDbWin32. ^self ].
	platformName = 'Unix' ifTrue: [ self downloadDbUnix. ^self ].
	self downloadDbSqueak.