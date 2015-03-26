as yet unclassified
renderOptionsOn: html
  "Do it manually because could not figure out how to call submitFormNamed:."

  html table
    attributeAt: 'cellspacing' put: '0';
    attributeAt: 'cellpadding' put: '0';
    with: [ 
          html
            tableRow: [ 
              components
                do: [ :c | 
                  | selected |
                  selected := self selection = c key.
                  html tableData
                    class:
                        (selected
                            ifFalse: [ 'option' ]
                            ifTrue: [ 'option-selected' ]);
                    with: [ self renderTabHeaderOn: html for: c value selected: selected ] ] ] ]