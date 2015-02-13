initialize-release
resortStates
	"in Gjallar the first stage implicitly is the one and only Inbox"

	| inBox |
	inBox := (states select: [:ea | ea isInput]) first.
	states
		remove: inBox ;
		addFirst: inBox