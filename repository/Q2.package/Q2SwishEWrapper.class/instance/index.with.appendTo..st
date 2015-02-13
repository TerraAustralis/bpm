public
index: aString with: aTitleString appendTo: anIndexFileName
	"aString (which is a list of words separated by spaces) will be mapped to aTitleString (typically an UUID string) in anIndexFileName. If the file doesn't exist, it will be created. The strings have to be compatible with the indexing engine. See String >> #utf8ToIndexCompatible"

	| newIndexFileName mergeIndexFileName |
	newIndexFileName := self temporaryFileName.
	(Q2Platform fileDirectoryClass default fileExists: anIndexFileName)
		ifTrue: [
			self index: aString with: aTitleString into: newIndexFileName.
			mergeIndexFileName := self merge: newIndexFileName with: anIndexFileName.
			(Q2Platform fileDirectoryClass default fileExists: mergeIndexFileName) ifTrue: ["it may not produce a file if there are no words"
				Q2Platform fileDirectoryClass default 
					forceRename: mergeIndexFileName toBe: anIndexFileName;
					forceRename: mergeIndexFileName, '.prop' toBe: anIndexFileName, '.prop'].
			Q2Platform fileDirectoryClass default deleteFileNamed: newIndexFileName; deleteFileNamed: newIndexFileName, '.prop'.
			Q2Platform fileDirectoryClass default deleteFileNamed: newIndexFileName, '.temp'; deleteFileNamed: newIndexFileName, '.prop.temp'  ]
		ifFalse: [
			self index: aString with: aTitleString into: anIndexFileName ]