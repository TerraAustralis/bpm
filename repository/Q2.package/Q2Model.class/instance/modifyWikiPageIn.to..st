transactions
modifyWikiPageIn: owner to: newSource

	self applyTxn: (Q2ModifyWikiPageTxn parent: owner source: newSource)