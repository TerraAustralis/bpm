*q2-seaside ui
targettingPoints

	| pos point |
 
	pos := self attributeAt: #pos ifAbsent: [ ^ #() ].
  
	point := pos findTokens: ','.
	
	^  Array with: (point first asNumber @ point second asNumber )