*q2-enumerating
groupsOf: n do: aBlock 
	"Evaluate aBlock with my elements taken n at a time.
	If aBlock has a single argument, pass it an array of n items,
	otherwise, pass the items as separate arguments.
	See also pairsDo:"

	| passArray args index |
	index := 1.
	passArray := (aBlock numArgs = 1).
	[index > self size] whileFalse: [
		args := (self copyFrom: index to: (index + n - 1 min: self size)) asArray.
		passArray ifTrue: [ aBlock value: args ] ifFalse: [ aBlock valueWithArguments: args ].
		index := index + n]