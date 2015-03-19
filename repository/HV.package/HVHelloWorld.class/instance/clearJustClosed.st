table of contents
clearJustClosed
	"Make sure the 'closed' entries are flushed out,
	but only if this is not an expand/collapse request."
	
	| toc tocString tocSym cmd |
	cmd := urlStream pathElements last utf8ToIso isoToSqueak.
	(cmd = 'expandtoc' or: [cmd = 'collapsetoc']) ifFalse: [
		cmd := cmd, '-closed'. "reused to match current URL below"
		tocSym := self tocSymbol.
		toc := self attributeAt: tocSym ifAbsent: [nil].
		toc ifNotNil: [
			toc := (((toc findTokens: $,)
					reject: [:s | (s endsWith: '-closed') and: [s ~= cmd]])
						collect: [:ss | ss asSymbol]) asSet.
			tocString := String streamContents: [:s |
				toc do: [:sym | s nextPutAll: sym, ',']]]
			ifNil: [tocString := ''].
		self attributeAt: tocSym put: tocString]