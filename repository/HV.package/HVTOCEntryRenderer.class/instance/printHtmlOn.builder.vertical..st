rendering
printHtmlOn: stream builder: aBuilder vertical: vertical
	"Render entry."

	self cssSelected: [
		stream nextPutAll: (aBuilder getLink: self fullName text: entry label).
		vertical
			ifTrue: [stream nextPutAll: '</br>']
			ifFalse: [stream nextPutAll: '&nbsp;&nbsp;']] on: stream