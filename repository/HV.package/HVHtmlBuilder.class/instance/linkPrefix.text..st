deprecated
linkPrefix: prefix text: text
	"Embed a link to the view with that prefix."

	| target |
	self deprecated: 'Method deprecated since it breaks the principle of having the views unknowledgeable about the url paths. Use #parentsDo: or something instead.'.

	target := view.
	[target prefix = prefix ifTrue:[ ^self link: target prefix text: text ].
	target := target parent.
	target notNil] whileTrue.
	^self link: prefix text: 'No view found for this link'