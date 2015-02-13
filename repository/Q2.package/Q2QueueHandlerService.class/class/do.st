as yet unclassified
do
	"Pop through the queue for this service and handle each item.
	If #allowDuplicates return false this is a Set, otherwise the same
	object can appear several times."

	| item |
	[(item := self refreshedSession model popForService: self) notNil] whileTrue: [
		self handleItem: item
	]