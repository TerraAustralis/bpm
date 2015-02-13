graph searching
reachableFrom: aState
	"return all states reachable from aState"

	^ aState transitionsFromMe collect:[:transition| transition target]