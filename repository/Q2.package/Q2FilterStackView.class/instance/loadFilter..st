action
loadFilter: aFilter 
	"Add filter to composite and add a view for it.
	Also recalculate the subset of cases in parent to show."

	(aFilter notNil and: [aFilter isString not]) 
		ifTrue: 
			[stack add: aFilter.
			self flag: #q2tdo.	"txn!"
			self addViewForFilter: aFilter]