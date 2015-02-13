testing
hasMinimumOneEndstage
	"true if at least one State button is an endstage"

	^(states  select: [:each | each isEndstage]) isEmpty not.