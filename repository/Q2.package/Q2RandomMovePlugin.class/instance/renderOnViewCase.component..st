rendering
renderOnViewCase: html component: comp
	"Add a button for a random move, if there are transitions available.
	Note that we can not remember the plugin component in an instvar
	because the plugin is persistent. Well, we could - but then we would
	need to mark it as transient using #maTransientVariables."

	| validation button case |
	comp parent case number odd ifTrue: [
		case := comp parent case.
	
		validation := case validateTransitions.
		html label: 'Cool random move plugin'
				field: [:idd |
					button := html submitButton.
					validation availableTransitions ifEmpty: [button disabled].
					button callback: [ self randomMove ]; text: 'Move randomly']
				tooltip: 'Move along any of the available transitions'
	]