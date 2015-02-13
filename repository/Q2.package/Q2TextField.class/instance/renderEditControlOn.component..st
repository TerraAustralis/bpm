rendering
renderEditControlOn: html component: fieldComponent

	| input |
	multiline
		ifFalse: [
			input := html textInput.
			html key ifNotNil: [input id: html key].
			input class: cssClass.
			maxLength ifNotNilDo: [ :num |
				input maxLength: num ].
			input
				value: fieldComponent getCache;
				callback: [ :value | fieldComponent setCache: value ]]
		ifTrue: [
			input := html textArea.
			html key ifNotNil: [input id: html key].
			input columns: cols; rows: rows. 
			input class: cssClass;
				value: fieldComponent getCache;
				callback: [ :value | fieldComponent setCache: value ]]

"]
	ifTrue: [
			fieldComponent renderControl: [ :html | html text: fieldComponent cache ] ]"