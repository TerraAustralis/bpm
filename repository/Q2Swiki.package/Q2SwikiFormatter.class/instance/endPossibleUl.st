private
endPossibleUl
	"Ok, close the uls."

	ulLevel > 0 ifTrue:[
		builder close.
		ulLevel timesRepeat: [builder close].
		ulLevel := 0.
		^true].
	^false