as yet unclassified
renderOnViewCase: html component: comp
| viewCase canWriteCase tooltipExtra buttonDisable button |
	viewCase := comp parent.
	canWriteCase := viewCase case writeCheck notNil.
	tooltipExtra := ''.
	buttonDisable := false.
	viewCase case stage writeCheck ifNil: [
		buttonDisable := true.
		tooltipExtra := '. You do not have write permission on this stage which is needed to take responsibility.'].
	canWriteCase ifFalse: [
		buttonDisable := true.
		tooltipExtra := '. You do not have write permission on the case which is needed to take responsibility.'].
	viewCase case currentUserResponsible ifTrue: [
		buttonDisable := true.
		tooltipExtra := '. You are already responsible.'].
	html label: 'Take responsibility' field: [:iid |
		button := html submitButton.
		button id: iid.
		buttonDisable ifTrue: [button disabled].
		button callback: [ 
			viewCase updateViewAfter: [ viewCase model setResponsible: viewCase currentUser forCase: viewCase case ]
		]; text: 'Take']
	tooltip: 'Take the role of being responsible for this case', tooltipExtra.