copying
copyPrototypeWithoutCases
	"Copy this process without its cases "
	
	| tmp copy |

	tmp := cases.

	[
		cases := #().
		copy := self copyPrototype.
	] ensure: [ cases := tmp ].

	^ copy