set and get
messageIconFileName
	"If any of the fields in the form is 'exclamation' or 'check' -
	this should be propagated to the tab. If not, show the question-mark -
	in blue if there exists a help section form the form, otherwise in grey."

	| ranking best |
	best := nil.
	ranking := {nil. 'q2-check.png'. 'q2-exclamation.png'}.

	fieldComponents do: [:each | | fileName |
		fileName := (self messageIconFileName: each field help: each field wikiPage).
		((ranking indexOf: best) < (ranking indexOf: fileName)) ifTrue: [
			best := fileName]
	].
	best ifNil: [self model form wikiPage source isEmpty 
				ifTrue: [best := 'q2-question-grey.png']
				ifFalse: [best := 'q2-question.png']].
	((self currentUserSettings showIntegratedHelp not) and: [best ~= 'q2-exclamation.png']) ifTrue: [^nil].
	^  'small-', best