requests
handleInitialRequest
	"Handle direct links with URL params.
	Return true if the request was handled.
	False if we should fallback to the default."

	| parts key value case |
	
	"to avoid errors, in GemStone we simply return false, since nativeRequest is nil"
	Q2Platform platformIsGemStone ifTrue: [ ^ false ].
		
	parts := initialRequest nativeRequest pathParts.
	initialRequest := nil.
	key := ''.
	value := ''.
	(parts size > 2) ifTrue: [
		key := parts at: (parts size - 1).
		value := parts last
	].
	((key compare: 'case' caseSensitive: false) == 2) ifTrue: [
		"Navigate to requested case"
		case := self model findCaseNamed: value.
		case
			ifNil: [self inform: 'No case with name ', value, ' found.'. ^false]
			ifNotNil: [self viewCase: case. ^true].
	].
	^false