sample
loadCustomObjects
	"Load the model with sample custom objects used for testing."

	| severity probability priority |
	"This one is typically set by the reporter"
	severity := self newCustomObjectTypeNamed: 'Severity'.
	severity strings: {'Annoying'. 'Minor'. 'Moderate'. 'Severe'. 'Catastrophic'}.

	"These two are typically set by the responsible"
	probability := self newCustomObjectTypeNamed: 'Probability'.
	probability strings: {'Frequent'. 'Likely'. 'Possible'. 'Rare'. 'Unlikely'}.

	priority := self newCustomObjectTypeNamed: 'Priority'.
	priority hasNil: true.
	priority strings: {'5 (low)'.'4'.'3'.'2'.'1 (high)' }.