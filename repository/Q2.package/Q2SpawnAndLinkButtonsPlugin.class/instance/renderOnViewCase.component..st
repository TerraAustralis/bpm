rendering
renderOnViewCase: html component: comp
 | disabled tip |
	"linking requires case write access"
	disabled := (comp parent case writeCheck isNil) and: [ createOnly not ].
	tip := disabled ifTrue: [ 'You do not have write permission on current case to perform this operation' ] ifFalse: [ self tooltip ].
	html label: self label field: [:iid | 
		html submitButton disabled: disabled; text: self text; callback: [ self spawnFromCase: comp parent case ] 
		] 
	tooltip: tip.