dispatching
dispatch
	"Dispatch to correct method in this view.
	If dispatchOverride returns something
	different from nil, consider it handled."

	| result |
	result := self dispatchOverride.
	result ifNotNil: [^result].
	^self dispatchOn: self nextMethod