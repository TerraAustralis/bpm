action
clear
	"Unload filters, clear freetext and calculate."

	filterViews copy do: [:fv | self unloadFilterViewer: fv].
	stack freetext: ''.
	self calculate