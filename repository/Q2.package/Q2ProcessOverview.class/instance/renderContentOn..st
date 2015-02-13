render
renderContentOn: html
  "Show information about a selected process."

  | processes |
  super renderContentOn: html.
  processes := self currentUser processes.
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
              'There are no Processes available for you to view. Ask an administrator to get access to at least one Process.' ].
      ^ self ].
  process ifNil: [ self process: processes first ].
  processes size > 1
    ifFalse: [ html label: 'Process' data: process name ]
    ifTrue: [ 
      html form
        with: [ 
          html
            label: 'Process'
            field: [ :id | 
              html select
                id: id;
                size: 1;
                onChange: 'submit()';
                list: self currentUser processes;
                labels: [ :p | p name ];
                selected: self process;
                callback: [ :value | self process: value ] ]
            tooltip: 'Select process to view'.
          (self currentUser isAdmin or: [ process isAdmin: self currentUser ])
            ifTrue: [ 
              html submitButton
                text: 'edit';
                callback: [ self editWorkflow ];
                tooltip: 'Edit process' ] ].
      html horizontalRule ].
  process
    ifNil: [ html text: 'No process selected' ]
    ifNotNil: [ 
      self graph.
      self renderProcessOn: html.
      self renderPermissionOn: html ]