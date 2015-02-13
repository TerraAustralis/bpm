as yet unclassified
renderContentOn: html 

	| processes |
	processes := self currentUser processes.
	processes ifEmpty: [
		html heading: label.
		self currentUser isAdmin ifTrue: [
			html paragraph: 'There are no Processes created yet in the system for you to add subscriptions for, an administrator like yourself needs to create one.']
		ifFalse: [
			html paragraph: 'There are no Processes available for you to add siubscriptions for. Ask an administrator to get access to at least one Process.'].
		^self].
	super renderContentOn: html