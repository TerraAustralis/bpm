as yet unclassified
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
		with: 'Add'.
 
	html button 
			disabled: self controller history isEmpty;
			onClick: (html evaluator callback: [:s | self controller doUndoLast.
					 			   self onListChangedDoListUpdate: s ];
 					onComplete: (html evaluator 
									callback: [:s | self onSuccessDoFullUpdate: s ]));
			tooltip: 'Undo last action';
			text:'Undo'