as yet unclassified
documentAt: aFilename ifAbsent: aBlock
	
	| doc |

	(fileNames includes: aFilename) 
		ifFalse: [ ^ super documentAt: aFilename ifAbsent: aBlock ].
 
	doc := (WACachedDocument 
			fileName:  (self libraryName, Q2Platform fileDirectoryClass slash , aFilename)) asMIMEDocument.

	 ^  WAResponse
			document: doc
			mimeType: doc mimeType