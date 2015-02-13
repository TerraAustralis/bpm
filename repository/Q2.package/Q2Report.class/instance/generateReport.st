files
generateReport
	| aFile writer |
	fileName := user name, '-', (creationTime asFormattedString: 'hhmmss' forTimeZone: self session currentUser timeZone).
	aFile := Q2Model reportsDirectory forceNewFileNamed: fileName, '.xml'.
	aFile converter: Latin1TextConverter new.
	writer := XMLWriter on: aFile.
	writer xmlDeclaration: '1.0' encoding:'UTF-8'. 
	self storeXmlOn: writer.
	aFile close.