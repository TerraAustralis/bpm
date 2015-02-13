set and get
messageIconFileName: field help: helpObject
	"Return filename for icon or nil if no icon is to be shown."

	| messages fileName |
	messages := self validationMessagesFor: field.
	messages
		ifNil: [
			helpObject ifNotNil: [
				helpObject source
					ifEmpty: [fileName := 'q2-question-grey.png']
					ifNotEmpty: [fileName := 'q2-question.png']]]
		ifNotNil: [
			messages
				ifEmpty: [fileName := 'q2-check.png']
				ifNotEmpty: [fileName := 'q2-exclamation.png']].
	((self currentUserSettings showIntegratedHelp not) and: 
		[fileName ~= 'q2-exclamation.png']) ifTrue: [^nil].
	^ fileName