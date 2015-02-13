rendering
labelFor: anItem

	^anItem ifNil: [nilItemString] ifNotNil: [anItem displayString]