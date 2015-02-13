testing
isChanged
	"Has the filters or their values changed since last time this stack was used?"

	^filtersChanged isNil or: [
		filtersChanged or: [lastValues ~= self collectValues]]