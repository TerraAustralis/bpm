zipping
zipDb

	FileDirectory deleteFilePath: self zipFilePath.
	SmalltalkImage current platformName = 'Win32'
		ifTrue: [ self zipDbSqueak "zipDbWin32" ] "Doesn't work"
		ifFalse: [ self zipDbSqueak ]