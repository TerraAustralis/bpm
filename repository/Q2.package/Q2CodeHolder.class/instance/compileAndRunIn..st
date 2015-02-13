running
compileAndRunIn: target

	result := nil.
	error := nil.
	[result := Q2Platform evaluate: code inContext: target notifying: self ]
		on: Error do: [:ex |
			error := ex asString.
			Q2Log error: 'Evaluation error - ', error, ' in code: ', code asString.
			ex pass ]