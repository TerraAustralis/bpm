render
renderContentOn: html
  "This is the default view of the user."

  editMode
    ifFalse: [ 
      html form
        with: [ 
          html searchInput
            id: #'search';
            size: 40;
            callback: [ self applyFreeText ];
            tooltip:
                'Enter one or more words to search for, you can also use AND, OR, NOT, () and wildcard *';
            on: #'freetext' of: freetextFilter.
          html div
            class: 'errorMessage';
            with: [ html text: freetextFilter errorMessage ] ] ].
  super renderContentOn: html.
  editMode
    ifTrue: [ 
      html form
        with: [ 
          casePanelViews do: [ :panelView | html render: panelView ].
          html
            button: 'Add case panel'
            callback: [ self newPanelView ]
            tooltip: 'Add one more case panel'.
          html
            button: 'Save changes'
            callback: [ self save ]
            tooltip: 'Save all changes made to the page'.
          html
            button: 'Cancel'
            callback: [ self cancel ]
            tooltip: 'Cancel all changes made to the page' ] ]
    ifFalse: [ casePanelViews do: [ :panelView | html render: panelView ] ].
  (self currentUserSettings showEditMode and: [ editMode not ])
    ifTrue: [ self renderEditSwitchOn: html ]