as yet unclassified
urlOf: aSymbol using: aHandler
  ^ aHandler baseUrlForLibrary
    addToPath: self libraryName;
    addToPath: (self asFilename: aSymbol);
    yourself