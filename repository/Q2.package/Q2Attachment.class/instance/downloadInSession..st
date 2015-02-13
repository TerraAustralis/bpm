seaside
downloadInSession: session

	| stream |
	stream := self readStream.
	session download: stream mimeType: stream mimeType filename: localFileName