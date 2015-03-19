start-stop
startOn: portNum mode: mode
	"Start service on port <portNum> in mode <mode>.
	We first create a root view that use us as default view class
	and then we start the root view."

	^(self rootView
		model: self createModel
		alias: self defaultAlias
		viewClass: self defaultViewClass)
		startOn: portNum mode: mode; yourself