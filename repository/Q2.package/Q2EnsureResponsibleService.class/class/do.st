as yet unclassified
do

	"Q2Session sessionDo: [Q2Session current model processes do: [:proc | proc ensureResponsibles]]"

	self refreshedSession model processes do: [:proc | proc ensureResponsibles]