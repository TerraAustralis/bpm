render
initialize
	super initialize.
	description := 'View alarms on case'.
	label := 'Alarms'.
	editors := Dictionary new.
	newalarms := OrderedCollection new.