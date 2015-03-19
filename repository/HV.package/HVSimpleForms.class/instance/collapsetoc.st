urls
collapsetoc
	"Collapse given entry by updating the session info on which entries to show.
	If the current URL is within the closed tree we redirect to the
	entry that was closed and also mark it specifically so that it isn't
	autoexpanded immediately since we normally autoexpand selected entries."

	| entryName toc tocString tocSym stream goNext |
	tocSym := self tocSymbol.
	entryName := request getFields at: #entry.
	toc := self attributeAt: tocSym ifAbsent: [^ self reloadWithoutLast].
	toc := ((toc findTokens: $,) collect: [:s | s asSymbol]) asSet.
	toc remove: entryName asSymbol ifAbsent: [nil].
	stream := urlStream.
	stream setToEnd.
	goNext := nil.
	
	[stream peek = entryName 
		ifTrue: 
			[toc add: (entryName , '-closed') asSymbol.
			stream next.
			goNext := stream pathWith: entryName squeakToIso isoToUtf8].
	stream position = 1 or: [goNext notNil]] 
			whileFalse: [stream back].
	tocString := String 
				streamContents: [:s | toc do: [:sym | s nextPutAll: sym , ',']].
	self attributeAt: tocSym put: tocString.
	goNext ifNotNil: [^ self reload: goNext utf8ToIso isoToSqueak].
	^ self reloadWithoutLast