rendering
renderContentOn: html
  | processes |
  super renderContentOn: html.
  processes := self currentUser adminProcesses.
  processes
    ifEmpty: [ 
      self currentUser isAdmin
        ifTrue: [ 
          html
            paragraph:
              'There are no Processes created yet in the system, an administrator like yourself needs to create one.' ]
        ifFalse: [ 
          html
            paragraph:
              'There are no Processes available for you to view, but you should have - ask an administrator to verify this.' ].
      ^ self ].
  target ifNil: [ self target: processes first ].
  processes size > 1
    ifFalse: [ html label: 'Process' data: target name ]
    ifTrue: [ 
      html
        form: [ 
          html
            label: 'Process'
            field: [ :id | 
              html select
                id: id;
                size: 1;
                onChange: 'submit()';
                list: processes;
                selected: self target;
                callback: [ :value | self process: value ] ]
            tooltip: 'Select process to edit definition of' ] ].
  self renderDefinitionOn: html