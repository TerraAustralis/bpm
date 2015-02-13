*q2-override
tooltip: stringOrTooltip
	"Using boxover, but only if current user wants them.
	See Q2StandardScripts>>boxover which is a slightly hacked/triimmed
	version of the original code. <stringOrTooltip> is either a String or
	a Q2BoxoverTooltip, see its class comment."

	stringOrTooltip ifNil: [^self].
	(Q2Session current noDb not and: [	Q2Session current currentUserSettings showToolTips]) ifFalse: [^self].
	^self title: (
		stringOrTooltip isString
			ifTrue: ['body=[', stringOrTooltip, ']']
			ifFalse: [ stringOrTooltip printString]) "then it must be a Q2BoxoverTooltip"