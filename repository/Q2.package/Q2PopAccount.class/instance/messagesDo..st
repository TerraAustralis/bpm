messages
messagesDo: aBlock
	"Perform aBlock for each message in the mailbox."

	| ps messages |
	ps := POP3Client openOnHostNamed: server.
	ps loginUser: username password: password.
	[	
		messages := OrderedCollection new.
		1 to: ps messageCount do: [ :messageNr |
			messages add: (ps retrieveMessage: messageNr).
			"Mark item for deletion. They will be deleted at 'ps quit'"
			ps deleteMessage: messageNr].
	] ensure: [ps quit. ps close].

	messages size > 0 ifTrue: [
		Q2Log debug: 'Popped ', messages size asString, ' emails.'.
		messages do: [:item |
			aBlock value: item]]