private
endPossibleLi
	"Ok, close the lis."

	(olLevel > 0 or: [ulLevel > 0]) ifTrue:[builder close]