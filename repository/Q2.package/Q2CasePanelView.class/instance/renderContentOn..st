render
renderContentOn: html
  "This method handles both normal and edit mode."

  "html horizontalRule."

  editMode
    ifTrue: [ 
      html
        label: 'Name'
        field: [ :id | 
          html textInput
            id: id;
            value: panel name;
            size: 40;
            callback: [ :name | panel name: name ] ]
        tooltip: 'The name of this case panel'.
      html
        label: 'Description'
        field: [ :id | 
          html textInput
            id: id;
            value: panel description;
            size: 60;
            callback: [ :desc | panel description: desc ] ]
        tooltip: 'The description (tooltip) of this case panel'.
      html
        label: 'Filter'
        field: [ :id | 
          html select
            id: id;
            size: 1;
            beOptional;
            optionalLabel: '<no filter>';
            list: self currentUser availableFilters;
            selected: panel filter;
            callback: [ :filter | panel filter: filter ] ]
        tooltip: 'The filter used in this case panel'.
      html
        label: 'Table form'
        field: [ :id | 
          html select
            id: id;
            size: 1;
            list: self currentUser tableCaseForms;
            selected: panel tableCaseForm;
            callback: [ :form | 
                  panel tableCaseForm: form.
                  self userSettingsModified ] ]
        tooltip: 'The form used in the table in this case panel'.
      html
        label: 'Number of cases shown'
        field: [ :id | 
          html textInput
            id: id;
            value: self numberOfCases;
            size: 3;
            callback: [ :num | num asInteger ifNotNilDo: [ :n | self numberOfCases: n ] ] ]
        tooltip: 'The number of cases shown in the table of this panel' ]
    ifFalse: [ 
      html
        tooltip: panel description
        with: [ 
          html heading
            level3;
            with: panel name ].
      self renderTableOn: html ].
  editMode
    ifTrue: [ 
      html break.
      html
        button: 'Delete'
        callback: [ self parent removePanelView: self ]
        tooltip: 'Delete this case panel from My View.'.
      self parent casePanelViews first = self
        ifFalse: [ 
          html
            button: 'Move up'
            callback: [ self parent movePanelViewUp: self ]
            tooltip: 'Move this case panel up on the page.' ].
      self parent casePanelViews last = self
        ifFalse: [ 
          html
            button: 'Move down'
            callback: [ self parent movePanelViewDown: self ]
            tooltip: 'Move this case panel down on the page.' ] ]