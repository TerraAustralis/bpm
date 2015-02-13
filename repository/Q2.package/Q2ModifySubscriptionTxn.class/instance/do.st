as yet unclassified
do
	"Unregister from Processes before changing, reregister afterwards."

	| sub userBefore |
	sub := formBuffer target.
	userBefore := sub user.
	sub unRegister.
	self apply.
	userBefore ~= sub user ifTrue: [self error: 'User cannot be changed in a subscription'].
	sub register.