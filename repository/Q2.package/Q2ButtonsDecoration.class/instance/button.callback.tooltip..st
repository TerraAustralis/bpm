accessing
button: text callback: block tooltip: tip

	buttons ifNil: [buttons := OrderedCollection new].
	buttons add: text -> {block. tip}