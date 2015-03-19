private
countLevel: char in: aLine
	"Start the paragraph."

	| count |
	count := 0.
	aLine do: [:c | c = char ifTrue:[count := count + 1] ifFalse: [^count]]