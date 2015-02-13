rendering-columns
renderSelectorFor: item on: html

	| div |

	div := html div.

	item isStage ifTrue: [ div style: 'background-color : ', (item workflow colorForStatus: item graphStatus)].
 
	div	onClick: (html evaluator callback: [ :s | self onListSelectionChanged: item update: s ]);
		with: [
				self renderTheFocusMarkerIf: (selectedStageOrTransition = item) on: html 
			]