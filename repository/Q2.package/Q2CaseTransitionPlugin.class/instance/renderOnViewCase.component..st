as yet unclassified
renderOnViewCase: html component: comp
| viewCase transitions moveButton |
	viewCase := comp parent.
	transitions := viewCase validation availableTransitions copy.
	transitions ifEmpty: [transitions add: '<no transitions possible now>'].

	html label: 'Move in workflow'
		field: [:iid |
			html select
			id: iid;
			size: 1;
			list: transitions;
				labels: [:tr | tr displayString ];
				selected: (comp valueAt: #transition);
				callback: [:value | comp valueAt: #transition put: value].
			moveButton := html submitButton.
			((viewCase case processSetting: #onlyResponsibleCanMove) and: [viewCase case currentUserResponsible not]) 				ifTrue: [moveButton disabled].
			(viewCase validation availableTransitions) ifEmpty: [moveButton disabled].
			moveButton callback: [ 
				viewCase updateViewAfter: [ viewCase model makeTransition: (comp valueAt: #transition) forCase: viewCase case. ]
			]; text: 'Move'
		]
		tooltip: 'Which transition to perform in the workflow'.