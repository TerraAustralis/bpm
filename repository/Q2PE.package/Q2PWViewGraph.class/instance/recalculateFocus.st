calculating
recalculateFocus

	| clickPoint graphFormScaledExtent scaling targetPoint |

	graphFormClickedItem ifNotNil: [  

	targetPoint := graphFormClickedItem targettingPoints middle.

	graph graphviz extent = (0@0) ifTrue: [ ^ nil ].

	graphFormScaledExtent := graphForm extent / self scaleDownFactor.
	scaling :=  graph graphviz extent / graphFormScaledExtent.
 
	"snap clickPoint to the targetPoint"
	clickPoint := targetPoint / scaling.
	graphFormClickX := clickPoint x asInteger.
	graphFormClickY := (graphFormScaledExtent y) - (clickPoint y asInteger).

	].