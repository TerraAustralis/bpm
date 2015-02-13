accessing
swikify: aString builder: aBuilder
	"Swikify the String. This code only handles cutting up
	the String into pieces based on angle brackets and calling
	#swikifyPiece: for each piece outside of a tag.
	&lt; and &gt; are escaped as >> and <<, &amp; with &&.
	Some special tags are also handled."

	| pos index piece tagLevel finished size ignore string |
	aString isEmptyOrNil ifTrue:[^''].
	"Fix escaped characters"
	string := ((aString copyReplaceAll: '&&' with: '&amp;')
				copyReplaceAll: '>>' with: '&gt;')
					copyReplaceAll: '<<' with: '&lt;'.
	"First we macroprocess separately."
	string := macroProcessor process: string.
	builder := aBuilder.
	inParagraph := finished := ignore := false.
	lastWasCR := true.
	consumeCR := false.
	ulLevel := olLevel := tagLevel := index := 0.
	pos := 1.
	size := string size.
	[finished ifFalse: [index := string indexOfAnyOf: AngleBrackets startingAt: pos].
	finished]
		whileFalse: [
			index = 0
				ifTrue:[index := size. piece := string copyFrom: pos to: index]
				ifFalse:[piece := string copyFrom: pos to: index - 1].
			pos := index + 1.
			(ignore or: [tagLevel > 0])
				ifTrue:["Check special tags"
					(piece = 'nopara') ifTrue:[renderParagraphs := false] ifFalse:[
					(piece = '/nopara') ifTrue:[renderParagraphs := true] ifFalse:[
					(piece = 'html') ifTrue:[ignore := true] ifFalse:[
					(piece = '/html') ifTrue:[ignore := false] ifFalse:[
					(aBuilder resolveTag: piece) ifFalse:[
						tagLevel = 0
							ifTrue:[builder html: piece]
							ifFalse: [builder tag: piece].
						]]]]]]
				ifFalse:[self swikifyPiece: piece].
			((string at: index) = $<)
				ifTrue: [tagLevel := tagLevel + 1]
				ifFalse: [tagLevel := tagLevel - 1].
			finished := index = size.
		].
	"End any lists"
	self endPossibleUl; endPossibleOl.

	"If we are still in a paragraph we end it."
	self endPossibleParagraph.

	"If we have a hanging CR we add a break."
	consumeCR ifFalse: [lastWasCR ifTrue:[builder break. lastWasCR := false]].
	^builder