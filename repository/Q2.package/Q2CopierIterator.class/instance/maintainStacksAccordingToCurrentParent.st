private
maintainStacksAccordingToCurrentParent
	[ self atEnd not and: [ stack last == parentStack last ] ] whileTrue: [
		stack removeLast.
		parentStack removeLast.
		self announcer announce: (Q2CurrentParent with: parentStack last).
		self announcer announce: announcementStack removeLast ]