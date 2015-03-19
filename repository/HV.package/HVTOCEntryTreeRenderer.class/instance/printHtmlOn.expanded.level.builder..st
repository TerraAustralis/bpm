rendering
printHtmlOn: stream expanded: exp level: aLevel builder: aBuilder
	"Render entry."

	| url expanded linkUrl icon |
	aLevel timesRepeat: [stream nextPutAll: '&nbsp;&nbsp;&nbsp;'].
	self cssSelected: [
	url := self fullName.
	entry children isEmpty
		ifTrue: [linkUrl := url. icon := aBuilder getImage: self leafImageUrl. expanded := false]
		ifFalse: [
			expanded := exp includes: entry name.
			expanded
				ifTrue: [linkUrl := self collapseUrl. icon := aBuilder getImage: self openImageUrl]
				ifFalse: [linkUrl := self expandUrl. icon := aBuilder getImage: self closedImageUrl]].
	stream
		nextPutAll: (aBuilder getLink: linkUrl text: icon);
		nextPutAll: '&nbsp;';
		nextPutAll: (aBuilder getLink: url text: entry label);
		nextPutAll: '<br />'] on: stream.
	expanded ifTrue: [
		entry children do: [:child |
			(HVTOCEntryTreeRenderer on: child parent: self)
				printHtmlOn: stream expanded: exp level: aLevel + 1 builder: aBuilder]]