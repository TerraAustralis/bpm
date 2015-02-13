action
unloadFilterViewer: aFilterViewer 
	"Unload filter and view."

	stack remove: aFilterViewer model.
	self flag: #q2tdo.	"txn!"
	filterViews remove: aFilterViewer