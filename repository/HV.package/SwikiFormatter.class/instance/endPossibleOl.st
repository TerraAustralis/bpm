private
endPossibleOl
	"Ok, close the uls."

	olLevel > 0 ifTrue:[
		builder close.
		olLevel timesRepeat: [builder close].
		olLevel := 0.
		^true].
	^false