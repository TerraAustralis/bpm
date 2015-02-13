as yet unclassified
testCurrent

"
self debug: #testCurrent.  
"

	 "the current resources handler is serving file based resources"
	self assert: Q2Resources current class = Q2FileBasedResources