layout
layoutNodes: nodeList
	
	"format => node name x y width height label style shape color fillcolor"
	
	nodeList do:
		[:each | | node |
		node _ self nodeNamed: each second.
		
		node ifNotNil:
			[ | x y |
			x _ (each third asNumber * self class pointsPerInch) rounded.
			y _ (each fourth asNumber * self class pointsPerInch) rounded.
			
			node pos: x asString, ',', y asString.
			node width: each fifth asNumber.
			node height: each sixth asNumber.
			
			node label: each seventh.
			node style: each eighth.
			node shape: each ninth.
			node color: (each at: 10).
			node fillcolor: (each at: 11)]]