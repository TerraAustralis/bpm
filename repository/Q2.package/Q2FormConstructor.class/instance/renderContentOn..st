as yet unclassified
renderContentOn: html
| index  |
	html form name: 'formedit'; with: [
		html heading: 'Edit form'.

		html render: editor.

		index := 1.
		fields do: [ :fld | 
			html fieldSet legend: 'Field #' , index displayString; with: [
			html label: 'Field type' field: [ :id | html text: fld key class fieldTypeName ].
			html render: fld value.

			index > 1 ifTrue: [ 
				html submitButton value: 'Move up'; 
				callback: [ self swapField: fld with: (fields before: fld) ]; 
				tooltip: 'Move field up in list' ].

			index < fields size ifTrue: [
				html submitButton value: 'Move down';  
				callback: [ self swapField: fld with: (fields after: fld) ]; 
				tooltip: 'Move field down in list' ].

			html submitButton value: 'Delete';  callback: [ self removeField: fld ]; tooltip: 'Delete field'.

			index := index + 1.
			]
		].
						
		html break;break.
		html text: 'Add field of type'; space.
			html select
			list: fieldTypes;
			labels: [:item | item fieldTypeName ];
			callback: [:value | fldType := value ] .
		html submitButton text: 'Add'; callback: [
			| fld |
			fld := fldType new label: '<new field>'.
			fields add: fld -> (self fieldEditor: fld)
		].
		html break.
		html submitButton text: 'Add group'; callback: [
			| fld |
			fld := Q2FieldGroup new begin: true; label: '<new group>'.
			fields add: fld -> (self fieldEditor: fld).
			fld := Q2FieldGroup new begin: false.
			fields add: fld -> (self fieldEditor: fld)
		].


		html horizontalRule.
		html submitButton value: 'Save changes'; callback: [ 
			editor save.
			fields do: [ :each | each value save ].
			self answer
		].
		html submitButton value: 'Cancel changes'; callback: [ self answer: nil ].

	].