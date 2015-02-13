as yet unclassified
handleItem: anItem
  [ 
  anItem send.
  Q2Log info: 'Email sent to: ' , anItem to ]
    on: Error
    do: [ :err | 
      Q2Log
        error:
          'Send mail failed. ' , err asString , '. From: ' , anItem from , ' To: '
            , anItem to ]