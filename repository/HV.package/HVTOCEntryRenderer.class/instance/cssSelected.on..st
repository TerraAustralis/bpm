rendering
cssSelected: aBlock on: stream
	"Render entry."

	stream nextPutAll: '<span class="',
		(entry isSelected ifTrue: ['selectedTocEntry'] ifFalse: ['tocEntry']) ,'">'.
	aBlock value.
	stream nextPutAll: '</span>'