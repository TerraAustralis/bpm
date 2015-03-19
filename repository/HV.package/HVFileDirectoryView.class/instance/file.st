urls
file
	"Download a file."

	| fileName stream |
	"First we pick out the filename and turn the characters escaped by the browser back."
	fileName := (self urlStream next) unescapePercents.

	"If the filename is empty we use the inherited method #serverError to return a simple error page.
	Oterwise we open the file and if it exists we finally return the stream which will be converted
	into a HTTP response just before being returned to Comanche."
	fileName isEmpty
		ifTrue: [^self serverError: 'No filename specified in URL.']
		ifFalse:[[stream := model oldFileNamed: fileName]
					on: FileDoesNotExistException
					do: [^self serverError: 'No file found with name: ', fileName]].
	^stream