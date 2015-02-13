notes
findNoteByNumber: anInteger
	"Find note with number <anInteger>."

	anInteger ifNotNil: [
		^notes at: anInteger ifAbsent: [Q2Log warn: 'Referenced parent note not found, adding without parent.'. nil]].
	^nil