as yet unclassified
subjectWithoutReference: subject
	"Parse subject line and return it without first reference found:
		'[#' <content> ']'  "

	| startMarker endMarker |
	startMarker := subject findString: '[#'.
	(startMarker = 0 or: [startMarker + 3 > subject size]) ifTrue: [^subject].
	endMarker := subject findString: ']' startingAt: startMarker + 2.
	(endMarker = 0 or: [startMarker + 3 > endMarker]) ifTrue: [^subject].
	^(subject copyFrom: 1 to: startMarker - 1), ' ',(subject copyFrom: endMarker + 1 to: subject size)