rendering
renderEditControlOn: html component: fieldComponent
	
	| items select |
	items := #(new open closed).
	select := html multiSelect.
	select
		size: 5;
		list: items;
		selected: value;
		callback: [:val | self value: val ];
		labels: [:each | each displayString]