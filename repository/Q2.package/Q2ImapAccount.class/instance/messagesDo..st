messages
messagesDo: aBlock
	"Perform aBlock for each new message in the mailbox."

	| ps messages |
	ps := IMAPAccount server: self server username: self username password: self password.
	ps login.
	[	
		messages := ps fetchAllAndRemove.
		"Mark items for deletion."
		"ps deleteMessage: messageNr"
	] ensure: [ps close].

	messages size > 0 ifTrue: [
		Q2Log debug: 'Got ', messages size asString, ' IMAP emails.'.
		messages do: [:item |
			aBlock value: item]]