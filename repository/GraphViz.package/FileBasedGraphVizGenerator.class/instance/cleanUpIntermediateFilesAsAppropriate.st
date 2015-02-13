private
cleanUpIntermediateFilesAsAppropriate
  | entries |
  deleteIntermediateFiles
    ifFalse: [ ^ self ].
  self outputFileDirectory deleteFileNamed: self dotFileName.
  entries _ self outputFileDirectory fileNamesMatching: self baseFileName , '.*'.
  entries do: [ :each | self outputFileDirectory deleteFileNamed: each name ]