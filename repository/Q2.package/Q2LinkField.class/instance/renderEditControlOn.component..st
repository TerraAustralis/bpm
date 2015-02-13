rendering
renderEditControlOn: html component: fieldComponent
	
	| select caseName case |
	select := html select.
	select
		list: (fieldComponent valuesFor: self privateKey);
		selected: fieldComponent getCache type;
		callback: [:val | fieldComponent getCache type: val ];
		labels: [:each | each displayString].
	caseName := html space; textInput.
	html key ifNotNil: [ caseName id: html key ].
	caseName class: cssClass.
	caseName maxLength: 12.
	case := fieldComponent getCache to.
	caseName
		value: (case ifNil: [''] ifNotNil: [case name]);
		callback: [ :value |
			case := self model findCaseNamed: value.
			case ifNotNil: [fieldComponent getCache to: case]].