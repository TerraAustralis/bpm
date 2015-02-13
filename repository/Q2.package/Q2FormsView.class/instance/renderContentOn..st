as yet unclassified
renderContentOn: html
	html form: [
	html table: [
		html tableRow: [
			html tableHeading class: 'reportHeading'; with: 'Name'.
			html tableHeading class: 'reportHeading'; with: 'Label'.
			html tableHeading class: 'reportHeading'; with: 'Description'.
			html tableHeading class: 'reportHeading';  colSpan:2; with: ''.
		].

		formsModel forms do: [ :form | 
			html tableRow: [
				html tableData with: form name.
				html tableData with: form label.
				html tableData with: form description.
				html tableData: [ 
					html submitButton value: 'Edit';  callback: [ self editForm: form ]; tooltip: 'Edit form'.
				].
				html tableData: [ 
					html submitButton value: 'Remove';  callback: [ 
						self model removeForm: form from: formsModel
					]; tooltip: 'Remove form'.
				].
			]
		]
	].
		html break;break.
		html submitButton value: 'Create new form'; callback: [ self createNewForm ]; tooltip: 'Create new form'.
	].