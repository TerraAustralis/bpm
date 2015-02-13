private
swikifyPiece: aString
  "Swikify the String. The string contains CRs as lineendings but may
	end in a middle of a line, that is why we keep state in instance variables.
	An empty line ends current paragraph if
	a paragraph is in progress, otherwise it generates a <br />.
	Transformations done are:
		CR -> <br />, ! -> h1, !! -> h2, !!! -> h3, # -> <ol> , ## -> nested <ol>
		- -> <ul>, -- -> nested <ul>, :=something:= -> <b>something</b>
		| -> <hr>
		*something* -> Link to something,
		*textOrImage|something* -> Link to something but showing text or image for link. 

		And then finally also map '**'-> '*' and ':=:=' to ':=' (unless inside a *-pair)"

  "Map the tricky characters."

  | string newLevel |
  string := aString.
  (string
    findTokens: (String with: Character cr with: Character lf)
    keep: (String with: Character cr))
    do: [ :aLineArg | 
      | aLine |
      aLine := aLineArg.
      aLine = (String with: Character cr)
        ifFalse: [ 
          "Not a CR"
          "Convert any links in the line"
          aLine := self fixEms: aLine.
          aLine := self fixLinks: aLine.	"Check for special line beginnings"
          consumeCR := true.
          lastWasCR
            ifTrue: [ 
              (aLine beginsWith: '-')
                ifTrue: [ 
                  self endPossibleParagraph.
                  self
                    endPossibleOl;
                    endPossibleLi.
                  newLevel := self countLevel: $- in: aLine.
                  newLevel > ulLevel
                    ifTrue: [ newLevel - ulLevel timesRepeat: [ builder openTag: 'ul' ] ]
                    ifFalse: [ ulLevel - newLevel timesRepeat: [ builder close ] ].
                  builder
                    openTag: 'li';
                    text: (aLine copyFrom: newLevel + 1 to: aLine size).
                  ulLevel := newLevel ]
                ifFalse: [ 
                  (aLine beginsWith: '#')
                    ifTrue: [ 
                      self endPossibleParagraph.
                      self
                        endPossibleUl;
                        endPossibleLi.
                      newLevel := self countLevel: $# in: aLine.
                      newLevel > olLevel
                        ifTrue: [ newLevel - olLevel timesRepeat: [ builder openTag: 'ol' ] ]
                        ifFalse: [ olLevel - newLevel timesRepeat: [ builder close ] ].
                      builder
                        openTag: 'li';
                        text: (aLine copyFrom: newLevel + 1 to: aLine size).
                      olLevel := newLevel ]
                    ifFalse: [ 
                      self
                        endPossibleOl;
                        endPossibleUl.
                      (aLine beginsWith: '|')
                        ifTrue: [ 
                          self endPossibleParagraph.
                          builder hr ]
                        ifFalse: [ 
                          (aLine beginsWith: '!!!')
                            ifTrue: [ 
                              self endPossibleParagraph.
                              builder h3: (aLine copyFrom: 4 to: aLine size) ]
                            ifFalse: [ 
                              (aLine beginsWith: '!!')
                                ifTrue: [ 
                                  self endPossibleParagraph.
                                  builder h2: (aLine copyFrom: 3 to: aLine size) ]
                                ifFalse: [ 
                                  (aLine beginsWith: '!')
                                    ifTrue: [ 
                                      self endPossibleParagraph.
                                      builder
                                        h1: (aLine copyFrom: 2 to: aLine size) ]
                                    ifFalse: [ 
                                      consumeCR := false.	"Ok, then this is text. If we are not in a paragraph we start one."
                                      inParagraph
                                        ifTrue: [ 
                                          "If last was CR we add a break for that until we continue."
                                          lastWasCR
                                            ifTrue: [ builder break ] ]
                                        ifFalse: [ 
                                          ulLevel + olLevel = 0
                                            ifTrue: [ self startParagraph ] ].
                                      builder nextPutAll: aLine ] ] ] ] ] ] ]
            ifFalse: [ 
              consumeCR := false.	"Ok, then this is text. If we are not in a paragraph we start one."
              inParagraph
                ifTrue: [ 
                  "If last was CR we add a break for that until we continue."
                  lastWasCR
                    ifTrue: [ builder break ] ]
                ifFalse: [ 
                  ulLevel + olLevel = 0
                    ifTrue: [ self startParagraph ] ].
              builder nextPutAll: aLine ].
          lastWasCR := false ]
        ifTrue: [ 
          "A CR"
          "If we are in a paragraph and last was a CR we end it, otherwise we remember this CR."
          consumeCR
            ifTrue: [ 
              consumeCR := false.
              lastWasCR := true ]
            ifFalse: [ 
              lastWasCR
                ifTrue: [ 
                  self endPossibleUl | self endPossibleOl
                    ifFalse: [ 
                      inParagraph
                        ifTrue: [ self endPossibleParagraph ]
                        ifFalse: [ builder break ] ] ]
                ifFalse: [ lastWasCR := true ] ] ] ]