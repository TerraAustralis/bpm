accessing
users
	"Return the administrastors from all processes"
	^self model processes inject: Set new into: [:coll :process | coll addAll: process administrators]