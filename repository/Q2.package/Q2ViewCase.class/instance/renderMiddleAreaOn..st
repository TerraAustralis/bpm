render
renderMiddleAreaOn: html
  "This is the area below the case view but above the notes."

  | editButton canWriteCase |
  canWriteCase := case writeCheck notNil.
  html
    form: [ 
      editButton := html submitButton.
      (canWriteCase
        and: [ 
          case stage writeCheck notNil
            or: [ case processSetting: #'allowEditOnStageWithoutWritePermission' ] ])
        ifFalse: [ editButton disabled ].
      editButton
        callback: [ self editCase ];
        text: 'Edit'.
      html space.
      html anchor
        target: '_new';
        style: 'float:right';
        callback: [ 
              | view |
              view := Q2PrintViewCase parent: self application parent.
              view case: self case.
              self call: view onAnswer: [  ] ];
        with: 'Print'.
      html
        break;
        break.
      validation := self validation.
      validation isValid
        ifFalse: [ 
          html div
            class: 'validation';
            with: [ self renderValidation: validation on: html ] ].
      self renderPluginsOn: html ]