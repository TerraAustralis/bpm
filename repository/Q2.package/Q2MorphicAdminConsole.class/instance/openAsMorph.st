as yet unclassified
openAsMorph
	" I create the layout and bound it to myself. Pretty straightforward, maybe not in the best style. "
	window := (SystemWindow labelled: self windowLabel) model: self.
	button := PluggableButtonMorph
		on: self
		getState: nil
		action: #selectRootObjectMenu 
		label: #buttonLabel.
	button 
		useRoundedCorners;
		onColor: Color transparent offColor: Color transparent.
	window
		addMorph: button
		frame: (0 @ 0 corner: 0.6 @ 0.06).
	window
		addMorph: (definitionMorph := PluggableTextMorph
			on: self
			text: #definition
			accept: #definition:)
		frame: (0 @ 0.06 corner: 0.6 @ 0.8).
	window
		addMorph: (PluggableTextMorph
			on: self
			text: #result
			accept: nil)
		frame: (0 @ 0.8 corner: 0.6 @ 1).
	window
		addMorph: (self explorer morph)
		frame: ( 0.6 @ 0 corner: 1 @ 1).
	^window