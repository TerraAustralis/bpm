cases
allReadableCases
	"All cases based on processes I can access and the permissions in those processes."

	| allCases |
	allCases := OrderedCollection new.
	self processes do: [:p | allCases addAll: (self readCheck: (p allCases asSet))].
	^allCases