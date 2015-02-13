as yet unclassified
open
  "self open"

  self
    named:
      Q2Platform workingDirectory pathName , Q2Platform fileDirectoryClass slash
        , self filename
    with: [ :level :symbol :sender :msg | 
      String
        streamContents: [ :stream | 
          DateAndTime now printOn: stream.
          stream
            nextPutAll: ' - ' , symbol , '(' , level asString;
            nextPutAll:
                '): ' , msg
                    ,
                      ((sender isKindOf: CharacterCollection)
                        ifTrue: [ sender asString ]
                        ifFalse: [ ' (' , sender class name , ')' ]) ] ]	"Q2Log info: 'Log file opened: ' , self filename"