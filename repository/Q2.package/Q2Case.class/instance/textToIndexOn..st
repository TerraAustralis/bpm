indexing
textToIndexOn: aStream
  "If subject is nil this case has been deleted, see #delete."

  subject ifNil: [ ^ self ].	"	aStream nextPutAll: self subject; ensureASpace.
	aStream nextPutAll: self description; ensureASpace."
  self forms
    do: [ :form | 
      form fields
        do: [ :field | 
          field hasTextToIndex
            ifTrue: [ 
              aStream
                nextPutAll:
                    (field valueFromTarget: self ifAbsent: [ '' ]) displayString;
                space ] ] ].
  self notebook notes do: [ :note | note textToIndexOn: aStream ]