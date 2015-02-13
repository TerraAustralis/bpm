rendering-buttons
renderTabFooterOn: html

	| selected selectedDisplay |

	selected :=  self selectedStageOrTransition.
	selectedDisplay := selected ifNil: [''] ifNotNil: [ selected displayType, ': ', selected displayString ]. 
 	html button 
		disabled: (selected isNil);
		onClick: (html evaluator 
					callback: [:s | self controller doDeleteTransitionOrStage: selected.
					 			   self onListChangedDoListUpdate: s ];
 					onSuccess: (html evaluator 
									callback: [:s |  self onSuccessDoFullUpdate: s ]));
		tooltip: 'Delete ', selectedDisplay;
		with: 'Delete'.


	html button 
		disabled: (selected isNil);
		onClick: (html evaluator callback: [:s | self controller doAddStageFrom: selected.
					 			   self onListChangedDoListUpdate: s ];
 					onComplete: (html evaluator 
									callback: [:s | self onSuccessDoFullUpdate: s ]));
		tooltip: 'Add new stage ', (self selected isStage ifTrue: ['following '] ifFalse: [ 'dividing ']), selectedDisplay;
		with:'Add Stage'.

	 
	html button 
			disabled: self selected isTransition not;
		onClick: (html evaluator callback: [:s | self controller doReverseTransitionDirection: selected.
					 			   self onListChangedDoListUpdate: s ];
 					onComplete: (html evaluator 
									callback: [:s | self onSuccessDoFullUpdate: s ]));
			tooltip: 'Reverse direction of ', selectedDisplay;
			with:'Reverse'.

	html button 
			disabled: self controller history isEmpty;
			onClick: (html evaluator callback: [:s | self controller doUndoLast.
					 			   self onListChangedDoListUpdate: s ];
 					onComplete: (html evaluator 
									callback: [:s | self onSuccessDoFullUpdate: s ]));
			tooltip: 'Undo last action';
			with:'Undo'