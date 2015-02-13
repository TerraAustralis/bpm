render
renderNote: note on: html level: level
  "Render this note and its replies recursively if showThreaded is true."

  | noteAnchor |
  noteAnchor := note id.
  html anchor id: noteAnchor.
  html listItem
    class: 'comment';
    with: [ 
          html
            div: [ 
              self renderObject: note on: html.
              printMode = true
                ifFalse: [ self renderEditorFor: note on: html ].
              showThreaded
                ifTrue: [ 
                  html
                    unorderedList: [ 
                      newFirst
                        ifTrue: [ 
                          note replies
                            reverseDo: [ :reply | self renderNote: reply on: html level: level + 1 ] ]
                        ifFalse: [ note replies do: [ :reply | self renderNote: reply on: html level: level + 1 ] ] ] ] ] ]