public
search: aString in: anIndexFileName
	"Search for aString in the index given by anIndexFileName. The string have to be compatible with the indexing engine. See String >> #utf8ToIndexCompatible"
	
	| result |
	result := (self basicSearch: (self escape: aString) in: anIndexFileName). 
	(result isEmpty or: [ result includes: $@ ])
		ifFalse: [
			" if swish-e returns a string which is not empty and not includes a @
 	           then we have a swish-e error. "
			self error: result ]
		ifTrue: [ 
			^result subStrings: '@' ]