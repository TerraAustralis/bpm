render
renderContentOn: html
  "Create a new case. The user selects process which presents the process
	specific form."

  | formValue case processes |
  processes := self currentUser processes.
  processes
    ifEmpty: [ 
      html heading: label.
      self checkAndRenderIntroductionOn: html.
      self currentUser isAdmin
        ifTrue: [ 
          html
            paragraph:
              'There are no Processes created yet in the system in which to create Cases, an administrator like yourself needs to create one.' ]
        ifFalse: [ 
          html
            paragraph:
              'There are no Processes available for you in which to create a Case. Ask an administrator to get access to at least one Process.' ].
      ^ self ].
  editor formValue
    ifNil: [ 
      "lazy initialize"
      case := self process newCase.
      case reporter: self currentUser.
      case owner: case reporter.
      formValue := case createFormBuffer.
      editor edit: formValue ].
  processes size > 1
    ifFalse: [ 
      html heading: label , ' in: ' , self process name.
      self checkAndRenderIntroductionOn: html ]
    ifTrue: [ 
      html heading: label.
      self checkAndRenderIntroductionOn: html.
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
            tooltip: 'Select process to create case in' ] ].
  html render: editor