parsing
parseAttributes: aString
	"Manual parse to make it as robust as possible." 

	| stream attrs |
	attrs := Dictionary new.
	stream := aString readStream.
	#(changeset tag user date files) do: [:sym |
		stream upToAll: sym, ':'.
		attrs at: sym put: stream nextLine trimBlanks].
	stream upToAll: 'description:'.
	attrs at: #description put: stream upToEnd.
	^attrs