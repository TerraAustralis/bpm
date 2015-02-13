initialize-release
initialize
	super initialize.
	freetextFilter := Q2FreeTextFilter new.
	filters := OrderedCollection new