copying
veryDeepInner: copier
	"Copy this case deeply to get a new one, either
	as a step in a mirror copy or when copying a case prototype."

	super veryDeepInner: copier.
	description := description copy.
	forms := forms copy.
	notebook := notebook veryDeepCopyWith: copier.

	Q2CurrentMirror signal
		ifNotNil: [ "mirror copy"
			transactions := transactions veryDeepCopyWith: copier.
			name := name copy.
			attachments := attachments veryDeepCopyWith: copier.
			links := links veryDeepCopyWith: copier.
			stage := stage veryDeepCopyWith: copier.
			roles := roles veryDeepCopyWith: copier.
			reporter := reporter veryDeepCopyWith: copier.
			responsible := responsible veryDeepCopyWith: copier.
			source := source veryDeepCopyWith: copier]
		ifNil: [ "prototype copy"
			transactions := transactions copy.
			attachments := attachments copy.
			links := links copy.
			roles := roles copy.
			fieldValues := fieldValues copy.
			name := nil. "it should get a new one"]