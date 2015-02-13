filters
availableFilters
	"Return all filter definitions available to this user."

	| |
	self flag: #q2todo.	"should also include filters defined in and imported into all processes"

	^filters