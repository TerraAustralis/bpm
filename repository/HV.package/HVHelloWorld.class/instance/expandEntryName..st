table of contents
expandEntryName: entryName
	"Expand given entry by updating the session info on which entries to show.
	If the entry was just closed we do not expand it."

	| toc tocString tocSym closed |
	tocSym := self tocSymbol.
	toc := self attributeAt: tocSym ifAbsent: [nil].
	toc ifNotNil: [
		toc := ((toc findTokens: $,) collect: [:s | s asSymbol]) asSet.
		closed := (entryName, '-closed') asSymbol.
		(toc includes: closed) ifFalse: [toc add: entryName asSymbol].
		tocString := String streamContents: [:s | toc do: [:sym | s nextPutAll: sym, ',']]]
	ifNil: [tocString := entryName].
	self attributeAt: tocSym put: tocString