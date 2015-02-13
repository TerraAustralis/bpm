initialize-release
initialize
	super initialize.
	description := 'Load, edit and save filters.'.
	stack := self currentUser defaultFilterStack veryDeepCopy.
	filterViews := OrderedCollection new.
	stack filters do: [:f | self addViewForFilter: f]