queries
messagesFor: aTarget
	"Return a collection of denial messages for all transition denials for this target,
	If empty the target is valid, if nil then there are no criteria for this field."

	(self validTargets includes: aTarget) ifTrue: [^#()].
	^self messagesForInvalidTargets at: aTarget ifAbsent: [nil]