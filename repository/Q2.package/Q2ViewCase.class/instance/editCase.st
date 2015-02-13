actions
editCase
	"Call an editor."

	| view |
	view _ Q2EditCase parent: self.
	view case: case tab: editor selectedTab.
	self call: view.
	self case: case "to refresh view after edit"