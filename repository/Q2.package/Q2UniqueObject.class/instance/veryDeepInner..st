copying
veryDeepInner: copier
	"If this is a mirror copy we copy the id, otherwise create a new one."

	Q2CurrentMirror signal ifNotNil: [id := id copy] ifNil: [id := self newUUID]