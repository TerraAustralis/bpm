rendering
renderEditControlOn: html component: fieldComponent
	
	| ops vals |
	operators := self operators.
	operators size = 1
	"	ifTrue:[
			html text: operator]"
		ifFalse: [
			ops := html select.
			ops
				list: self operators;
				selected: operator;
				callback: [:val | operator := val ];
				labels: [:each | each displayString]].
	vals := multi ifTrue: [html multiSelect ] ifFalse: [html select].
	vals
		list: values;
		selected: value;
		callback: [:val | self value: val ];
		labels: [:each | each displayString]