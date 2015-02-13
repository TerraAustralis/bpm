accessing
newName

	^ newName ifNil: [ from name, '->', to name ]