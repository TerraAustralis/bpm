as yet unclassified
initialize

	super initialize.
	label := 'Ini File'.
	description := 'The global Gjallar settings used at startup'.

	editor := Q2MultiFormEditor parent: self.
	editor addDefaultButtonsFor: self.
	self loadEditor.

	count := 0.