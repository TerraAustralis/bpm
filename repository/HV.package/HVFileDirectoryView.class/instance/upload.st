urls
upload
	"Upload a file."

	"Here we utilize an inherited convenience method to handle uploaded
	files. The block sent to #handleUpload: will be executed for each file
	uploaded. The block needs to take one argument - the filename, and
	should return a stream or nil. If a stream is returned the file contents
	will be written to it and then the stream will be closed. Returning nil
	ignores the file."
	self handleUpload: [:filename |
		"We simple first delete it if it exists and then return a FileStream
		so that the file gets written."
		(model fileExists: filename) ifTrue:[model deleteFileNamed: filename].
		model newFileNamed: filename].

	"We are done, redirect the user to the #default page."
	^self redirectToDefault