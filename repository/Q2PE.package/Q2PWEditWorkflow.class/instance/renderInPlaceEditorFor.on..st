rendering-columns
renderInPlaceEditorFor: item on: html

	| id |
	 	html div id: (id := html nextId);
			script: ( html inPlaceEditor
				id: id;
				okButton:false;
				okLink:false;
	 			cancelLink: false; 
 				triggerInPlaceEditor: [ :value | self doRenameItem: item to: value ];
				callback: [ :r | r render: item name ];
				onComplete: (
					html evaluator callback: [ :s | self onListChangedDoListUpdate: s ];
								onComplete: ( html evaluator callback: [ :s | self 														onSuccessDoFullUpdate: s ]) ));
						
			
			with: [ html text: item name ].