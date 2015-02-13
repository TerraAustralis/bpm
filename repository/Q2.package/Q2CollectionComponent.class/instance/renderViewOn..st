render
renderViewOn: html
  currentObject ifNil: [ currentObject := self firstOrNew ].
  formEditor := Q2FormEditor model: currentObject editFormBuffer.
  formEditor parent: self.
  html form
    with: [ 
      html
        label: self collectionLabel
        field: [ :id | 
          html select
            id: id;
            size: 1;
            onChange: 'submit()';
            list: self collection;
            selected: currentObject;
            callback: [ :value | self select: value ] ]
        tooltip: self collectionTooltip ].
  html horizontalRule.
  formEditor buttons
    button: 'Save'
      callback: [ 
          formEditor save.
          self saveItem: formEditor model ]
      tooltip: 'Save changes made in the editor';
    button: 'Save as new'
      callback: [ 
          formEditor save.
          self select: (self saveNewItem: formEditor model) ]
      tooltip: 'Save this as a new object';
    button: 'Delete'
      callback: [ 
          self deleteItem: currentObject.
          self select: nil ]
      tooltip: 'Delete this object';
    button: 'Cancel'
      callback: [ self select: nil ]
      tooltip: 'Cancel any changes made in the editor'.
  html render: formEditor