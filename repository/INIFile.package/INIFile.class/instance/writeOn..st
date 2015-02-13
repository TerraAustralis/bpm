writing
writeOn: aStream
	self sections
		do: [:ea | ea writeOn: aStream]
		separatedBy: [aStream cr]