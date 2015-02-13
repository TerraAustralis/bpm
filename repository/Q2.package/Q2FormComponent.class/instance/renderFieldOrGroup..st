rendering
renderFieldOrGroup: aFieldorGroup
	rowcnt := rowcnt + 1.
	aFieldorGroup isCollection ifTrue: [ | groupfield |
		groupfield := aFieldorGroup first field.
		renderer tableRow with: [
			renderer tableData colSpan: 3; with: [
				renderer fieldSet legend: groupfield label; tooltip: groupfield description; with: [
					renderer table class: #formtable; cellspacing:0; cellpadding: 0; with: [
						aFieldorGroup allButFirst do: [ :each | self renderFieldOrGroup: each]
					]
				]
			]
		]
	]
	ifFalse: [ renderer render: aFieldorGroup ]