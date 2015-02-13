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
  process ifNil: [ self process: processes first ].
  processes size > 1
    ifFalse: [ html label: 'Process' data: process name ]
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
                labels: [ :p | p name ];
                selected: self process;
                callback: [ :value | self process: value ] ]
            tooltip: self processTooltip ] ].
  self renderViewOn: html