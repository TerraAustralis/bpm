private
render
	"Concatenate everything together and substituting variables
	in the progress. First we check if we are timing this page.
	If we are then we need to calculate the stop time and incorporate
	the time at the bottom of the page."

	^document contents contents

"	| start stream |
	start := request propertyAt: #startTime ifAbsent: [nil].
	start ifNotNil: [elements removeLast ].
	stream := WriteStream on: (String new: 50000).
	elements do: [:element |
		(element isKindOf: String)
			ifTrue:[ stream nextPutAll: element ]
			ifFalse:[ element renderFullOn: stream ]].
	start ifNotNil: [
		stream nextPutAll: '<br><font size=-1>Time in ms: ', (Time millisecondClockValue - start) asString, '</font>', String crlf.
		^stream contents
	].
	^stream contents"