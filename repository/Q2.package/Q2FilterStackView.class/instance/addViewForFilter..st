initialize-release
addViewForFilter: aFilter
	filterViews add: ((Q2FilterView model: aFilter) subForm: true; parent: self)