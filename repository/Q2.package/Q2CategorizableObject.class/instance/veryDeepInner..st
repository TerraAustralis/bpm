copying
veryDeepInner: copier

	super veryDeepInner: copier.
	Q2CurrentMirror signal
		ifNotNil: [categories := categories veryDeepCopyWith: copier]
		ifNil: ["categories := categories copy    see #veryDeepFixupWith:"]