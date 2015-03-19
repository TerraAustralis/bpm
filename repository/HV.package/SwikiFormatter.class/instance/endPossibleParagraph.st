private
endPossibleParagraph
	"End the paragraph if we are in it."

"	inParagraph ifTrue: [targetStream cr; nextPutAll: '</p>';cr. inParagraph := false]"
	inParagraph ifTrue: [builder close. inParagraph := false]