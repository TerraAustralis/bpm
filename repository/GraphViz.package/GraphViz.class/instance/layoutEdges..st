layout
layoutEdges: edgeList
	
	"format => edge tail head n x1 y1 .. xn yn [label xl yl] style color"
	
	edgeList do:
		[:each | | edge positionOfStyle |
		edge _ self edgeNamed: each second -> each third.
		
		edge ifNotNil:
			[ | numberOfVertices pos |
			numberOfVertices _ each fourth asNumber.
			positionOfStyle _ 5 + (numberOfVertices * 2).
			pos _ String streamContents:
				[:stream |
				5 to: positionOfStyle - 1 by: 2 do: 
					[:i |
					stream
						nextPutAll: ((each at: i) asNumber * self class pointsPerInch) rounded asString;
						nextPut: $,;
						nextPutAll: ((each at: i + 1) asNumber * self class pointsPerInch) rounded asString;
						nextPutAll: ' ']].
				edge pos: pos allButLast.
				edge style: (each at: positionOfStyle).
				edge color: (each at: positionOfStyle + 1)]]