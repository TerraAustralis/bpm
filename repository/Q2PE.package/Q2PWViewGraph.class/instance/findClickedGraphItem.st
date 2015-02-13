calculating
findClickedGraphItem
	
	| minDist dist nearest nearestTarget clickPoint scaling graphFormScaledExtent |

	self debug: 'Origin X:', graphFormOriginX printString, ' Y:', graphFormOriginY printString.
	self debug: 'Click X:', graphFormClickX printString, ' Y:', graphFormClickY printString.

	graphFormPreviousClickedItem := graphFormClickedItem.

	graphFormScaledExtent := graphForm extent / (self scaleDownFactor asFloat).

	scaling :=  (self graphviz extent / graphFormScaledExtent).
 
	clickPoint := (graphFormClickX @ (graphFormScaledExtent y - graphFormClickY)) * scaling.

	self debug: 'click X:', clickPoint x printString, ' Y:', clickPoint y printString.

	minDist := SmallInteger maxVal.
	 
	self graphviz nodes and: self graphviz edges do: [ :item  |
		item targettingPoints do: [ :target |
			dist := clickPoint dist: target.
			dist < minDist ifTrue: [ minDist := dist. nearest := item. nearestTarget := target ].
		]
	].


	"snap clickPoint to the targetPoint"
	clickPoint := nearestTarget / scaling.
	graphFormClickX := clickPoint x asInteger.
	graphFormClickY := graphFormScaledExtent y - clickPoint y asInteger.

	graphFormClickedItem := nearest.

	graphFormClickedItem == graphFormPreviousClickedItem ifTrue: [ graphFormClickedItem := nil ].