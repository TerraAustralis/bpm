generating html
/ aSymbolOrFileNameString
  ^ super / aSymbolOrFileNameString	"aSymbolOrFileNameString isSymbol
    ifTrue: [ ^ self default urlOf: aSymbolOrFileNameString ]
    ifFalse: [ ^ self default urlForFile: aSymbolOrFileNameString ]"