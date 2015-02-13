private
quoted: aCaseOrNote
	"Return a quote to use in a reply."

	| content line |
	content := aCaseOrNote description readStream.
	^String streamContents: [:s |
		s nextPutAll: aCaseOrNote author fullName, ' wrote:', String lf.
		[content atEnd] whileFalse: [
			line := content nextLine.
			line ifNotEmpty: [
				line first = Character lf ifTrue: [line := line copyFrom: 2 to: line size].
				(line notEmpty and: [line first ~= $>]) ifTrue: [line := ' ', line]].
			s nextPutAll: '>', line, String lf]]