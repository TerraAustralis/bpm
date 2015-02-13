indexing
updateIndex
	"Update the free text indexing for this case."

	self process addToIndex: self. "Notify the process' index that the case is added or has changed"