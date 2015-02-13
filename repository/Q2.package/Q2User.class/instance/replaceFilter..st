filters
replaceFilter: aFilter

	| old |
	old := self model findObjectById: aFilter id.
	self model removeObjectById: aFilter.
	filters replaceAll: old with: aFilter.
	^self model addObjectById: aFilter