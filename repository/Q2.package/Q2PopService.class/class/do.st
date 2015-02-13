as yet unclassified
do
	"This service uses its own session and does not reallocate each time."

	"Q2Session sessionDo: [Q2Session current model processes do: [:proc | proc popEmails]]"


	self refreshedSession model processes do: [:proc | proc popEmails]