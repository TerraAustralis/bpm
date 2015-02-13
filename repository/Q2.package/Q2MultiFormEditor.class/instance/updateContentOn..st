render
updateContentOn: html
  "This is part of view, which updated by ajax"

  | formsToAdd formsToRemove |
  (toAdd notNil and: [ toAdd isString not ])
    ifTrue: [ self addExtraForm ].
  (toRemove notNil and: [ toRemove isString not ])
    ifTrue: [ self removeExtraForm ].
  html form multipart
    name: self formId;
    id: self formId;
    with: [ 
          edit
            ifTrue: [ 
              formValue canHaveExtraForms
                ifTrue: [ 
                  formsToAdd := self writeCheck: formValue allowedExtraForms.
                  formsToRemove := self writeCheck: formValue addedExtraForms.
                  formsToAdd size + formsToRemove size = 0
                    ifFalse: [ 
                      formsToAdd
                        ifEmpty: [ formsToAdd addFirst: '<no extra forms to add>' ]
                        ifNotEmpty: [ formsToAdd addFirst: '<select form to add...>' ].
                      formsToRemove
                        ifEmpty: [ formsToRemove addFirst: '<no extra forms to remove>' ]
                        ifNotEmpty: [ formsToRemove addFirst: '<select form to remove...>' ].
                      html
                        label: 'Add form'
                        field: [ :id | 
                          html select
                            onChange: 'submit()';
                            id: id;
                            size: 1;
                            list: formsToAdd;
                            selected: toAdd;
                            callback: [ :form | toAdd := form ] ].
                      html
                        label: 'Remove form'
                        field: [ :fid | 
                          html select
                            onChange: 'submit()';
                            id: fid;
                            size: 1;
                            list: formsToRemove;
                            selected: toRemove;
                            callback: [ :form | toRemove := form ] ] ] ] ].
          html render: tabBook.
          self renderButtonsOn: html ]