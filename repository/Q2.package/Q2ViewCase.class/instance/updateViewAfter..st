plugins support
updateViewAfter: aBlock
	"Make sure the view is updated. This method used by plugins."

	| currentTab |
	currentTab := editor selectedTab.
	aBlock value.
	self case: case.
	editor selectTab: currentTab