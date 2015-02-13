render
renderValidation: v on: html
	"Render the validation result."

	| wiki first |
	(v denials notEmpty or: [v deniedTransitions notEmpty]) ifTrue: [
		html heading level3; with: 'Validation issues'].
	v denials notEmpty ifTrue: [
		html unorderedList: [
			v denials do: [:denial |
				html listItem: [
					html text: denial]]]].

	v deniedTransitions notEmpty ifTrue: [
		wiki := WriteStream on: String new.
		first := true.
		v deniedTransitions keysAndValuesDo: [:trans :denials |
			first ifFalse: [wiki cr].
			first := false.
			wiki nextPutAll: 'To perform transition "'.
			wiki nextPutAll: trans displayString.
			wiki nextPutAll: '":'.
			denials do: [:denial | 
				wiki cr.
				wiki nextPutAll: '# '.
				wiki nextPutAll: denial message
			]
		].
		html html: ((Q2WikiPage source: wiki contents) swikifyFor: self inApplication: self application)
	]