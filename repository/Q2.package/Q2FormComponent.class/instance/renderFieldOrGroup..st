rendering
renderFieldOrGroup: aFieldorGroup
  rowcnt := rowcnt + 1.
  aFieldorGroup isCollection
    ifTrue: [ 
      | groupfield |
      groupfield := aFieldorGroup first field.
      renderer div
        class: 'fieldOrGroup';
        with: [ 
              renderer span
                class: 'fieldset';
                with: [ 
                      renderer fieldSet
                        legend: groupfield label;
                        tooltip: groupfield description;
                        with: [ 
                              renderer div
                                class: #'formtable';
                                with: [ aFieldorGroup allButFirst do: [ :each | self renderFieldOrGroup: each ] ] ] ] ] ]
    ifFalse: [ renderer render: aFieldorGroup ]