rendering
updateGraphFormOn: html
	||  
	self generateGraphForm. 

 	self scaleDownFactorFromWidth: graphForm width toFit: 900.
	
	"self session addLoadScript: (html evaluator

			 
			callback: [ :v | graphFormOriginY := v asNumber ] 
			value: (SUStream on: 'document.getElementById(''workflow-graph-form'')[''offsetTop'']'); 

			callback: [ :v | graphFormOriginX := v asNumber ] 
			value: (SUStream on: 'document.getElementById(''workflow-graph-form'')[''offsetLeft'']')). "

	html image
"		id: 'workflow-graph-form';"
		onLoad:  (html evaluator

			" data pushed to the server " 
			callback: [ :v | graphFormOriginY := v asNumber ] 
			value: (SUStream on: 'this[''offsetTop'']'); 

			callback: [ :v | graphFormOriginX := v asNumber ] 
			value: (SUStream on: 'this[''offsetLeft'']'));
		onClick: (html evaluator

			" data pushed to the server " 
			callback: [ :v | graphFormClickX := v asNumber - graphFormOriginX ] 
			value: SUEvent new x; 

			callback: [ :v | graphFormClickY := v asNumber - graphFormOriginY ] 
			value: SUEvent new y;

			callback: [ :v | graphFormClickIsLeftClick := v  ] 
			value: SUEvent new isLeftClick;

			"response script returned to the client"
			callback: [ :s |
				self findClickedGraphItem.
				self suFocusUpdate: s.
				self usedForCaseEditing 
					ifNil:[self suWorkflowSelectionUpdate: s.]
					ifNotNil:[graphFormClickedItem ifNotNil:
						[Transcript show: 'You clicked ', graphFormClickedItem id asString,' = ', (graphFormClickedItem attributeAt:#q2id).].
						"self lightbox: (WAYesOrNoDialog  new addMessage:'You clicked ', graphFormClickedItem id asString;yourself)."
"						self inform: 'You clicsked ', graphFormClickedItem id asString"
"						html  evaluator
						 callback: [:v | Transcript show v]
						 value: (self lightbox: (WAYesOrNoDialog  new addMessage:'You clicked ', graphFormClickedItem id asString;yourself))."
"callback: [ :value | self suCaseUpdate: s ]"
						]
			];
			yourself);
		form: graphForm; 
		height: (graphForm height / self scaleDownFactor) asInteger; 
		width: (graphForm width / self scaleDownFactor) asInteger.