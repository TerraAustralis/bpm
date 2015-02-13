as yet unclassified
referenceIn: subject
	"Parse subject line and return the content of first reference found:
		'[#' <content> ']'  "

	| startMarker endMarker |
	startMarker := subject findString: '[#'.
	(startMarker = 0 or: [startMarker + 3 > subject size]) ifTrue: [^nil].
	endMarker := subject findString: ']' startingAt: startMarker + 2.
	(endMarker = 0 or: [startMarker + 3 > endMarker]) ifTrue: [^nil].
	^subject copyFrom: startMarker + 2 to: endMarker - 1