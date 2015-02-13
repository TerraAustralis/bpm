indexing
searchIndex: searchString

	^(Q2SwishEWrapper new 
		search: searchString utf8ToIndexCompatible 
		in: self indexFullFileName) collect: [:each | UUID fromString: each]

"	| results searchTime |
	searchTime := [ results := (Q2SwishEWrapper new 
		search: searchString utf8ToIndexCompatible 
		in: self indexFullFileName) collect: [:each | UUID fromString: each] ] timeToRun.
	Q2Log debug: 
		('{1} cases found in process: {2} ({3}) in {4} milliseconds' format: {
			results size asString.
			self name.
			searchString utf8ToIso.
			searchTime }).
	^results
"