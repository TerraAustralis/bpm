rendering-columns
renderStatusSelectFor: stage on: html

	stage graphStatusOptions 
			ifNil:  [ html strong: stage graphStatus ] 	
	 		ifNotNilDo: [ :list |
				| id | 
				html select 
						id: (id := html nextId);
						list: list;
						selected: stage graphStatus;
						callback: [:value | self doStage: stage changeStatus: value ];
				onChange: 
					(html evaluator
						triggerFormElement: id;
						callback: [ :s | self onListChangedDoListUpdate: s ]);
				onChange: 
					(html evaluator
						callback: [ :s | self onListChangedDoGraphUpdate: s. self onListChangedDoListUpdate: s  ]).
 
 			]