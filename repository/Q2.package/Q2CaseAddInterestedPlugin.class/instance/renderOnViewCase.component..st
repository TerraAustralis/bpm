as yet unclassified
renderOnViewCase: html component: comp
| viewCase buttonDisable canWriteCase button tooltip |
	viewCase := comp parent.
	buttonDisable := false.
	canWriteCase := viewCase case writeCheck notNil.
	(canWriteCase not and: [(viewCase case processSetting: #allowAddSelfInterestedWithoutWritePermission) not])
		ifTrue: [
			buttonDisable := true.
			tooltip := 'You do not have write permission on the case which is needed to add or remove yourself as interested.'].
	((viewCase case currentUserHasRole: viewCase case interestedRole))
		ifTrue: [
			html label: 'Remove me as interested' field: [:iid |
				button := html submitButton.
				button id: iid.
				buttonDisable ifTrue: [button disabled].
				button callback: [ 
					viewCase updateViewAfter: [
						viewCase model remove: viewCase currentUser inRole: viewCase case interestedRole forCase: viewCase case.
					]
				]; text: 'Remove me']
			tooltip: (tooltip ifNil: ['Remove myself in the role of being interested in this case'])]
		ifFalse: [
			html label: 'Add me as interested' field: [:iiid |
				button := html submitButton.
				button id: iiid.
				buttonDisable ifTrue: [button disabled].
				button callback: [ 
					viewCase updateViewAfter: [
						viewCase model add: viewCase currentUser inRole: viewCase case interestedRole forCase: viewCase case.
					]
				]; text: 'Add me']
			tooltip: (tooltip ifNil: ['Add myself in the role of being interested in this case'])]