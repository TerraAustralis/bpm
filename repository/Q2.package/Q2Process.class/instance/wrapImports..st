private
wrapImports: aColl 
	^aColl collect: [:each | (Q2ImportedObjectWrapper wrap: each) process: self]