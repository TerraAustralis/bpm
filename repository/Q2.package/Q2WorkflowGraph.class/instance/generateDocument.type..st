as yet unclassified
generateDocument: id type: format
  | doc fileName |
  self graphviz
    id: id;
    make: format asSymbol.
  fileName := self outputPath , Q2Platform fileDirectoryClass slash , id , '.'
    , format.
  doc := WAMimeDocument
    on: (GRPlatform current contentsOfFile: fileName binary: true)
    mimeType: WAMimeType imagePng
    fileName: fileName.
  self document: doc