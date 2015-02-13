rendering
renderEditItemOn: html component: fc
  "By default we render a field the same if it is in a field list,
	but with a remove anchor added afterwards."

  (fc isReadOnly or: [ fc parent isReadOnly ])
    ifTrue: [ ^ self renderViewItemOn: html component: fc ]
    ifFalse: [ 
      self renderEditControlOn: html component: fc.
      html space.
      html anchor
        callback: [ fc removeComponent ];
        with: 'remove'	"submitFormNamed: 'multiformeditor';" ]