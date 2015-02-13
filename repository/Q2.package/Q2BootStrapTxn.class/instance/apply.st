as yet unclassified
apply
	"Initialize the model with basic objects.
	After having created the systemUser we can reconnect to it.
	The txn is not yet committed so we need to do it this awkward way."

	self session model initializeBasics.
	user := self session model users detect: [:e | e isKindOf: Q2SystemUser]