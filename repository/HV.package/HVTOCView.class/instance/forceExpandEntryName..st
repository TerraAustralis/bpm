table of contents
forceExpandEntryName: entryName
	"Expand given entry by updating the
	session info on which entries to show."

	| toc tocString tocSym |
	tocSym := self tocSymbol.
	toc := self attributeAt: tocSym ifAbsent: [nil].
	toc ifNotNil: [
		toc := ((toc findTokens: $,) collect: [:s | s asSymbol]) asSet.
		toc add: entryName asSymbol.
		tocString := String streamContents: [:s | toc do: [:sym | s nextPutAll: sym, ',']]]
	ifNil: [tocString := entryName].
	self attributeAt: tocSym put: tocString