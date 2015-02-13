attachments
attachmentsDirectory
	"Return a directory that this case can store its attachments in.
	This can only be used when the case has been created and has a name."

	^self getDirectory: ((self settings attachmentsDirectory), Q2Platform fileDirectoryClass slash, self name)