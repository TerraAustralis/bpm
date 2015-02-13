rendering/updating
updateContentOn: html
  "Show editor on a selected process."

  self getProcesses.
  processes ifEmpty: [ self renderThereAreNoProcessesOn: html ].
  html form
    with: [ 
      processes
        ifNotEmpty: [ 
          process ifNil: [ self process: self processes first ].
          html
            label: 'Process'
            field: [ :id | 
              html select
                id: id;
                size: 1;
                list: processes;
                labels: [ :p | p name ];
                selected: process;
                onChange:
                    (html prototype evaluator
                        triggerFormElement: id;
                        callback: [ :s | self suFullUpdate: s ]);
                callback: [ :value "(html updater 
							id: self parent contentId;
							triggerFormElement: id;
							on: #updateContentOn: of: self parent);" | self process: value ] ]
            tooltip: 'Select process to edit' ].
      html text: 'Modify: '.
      html textInput
        id: 'newProcessNameField';
        on: #'newProcessName' of: self;
        onKeyUp:
            (html prototype updater
                id: 'modifyProcessButtons';
                triggerFormElement: 'newProcessNameField';
                on: #'renderModifyProcessButtonsOn:' of: self).
      html span
        id: 'modifyProcessButtons';
        with: [ self renderModifyProcessButtonsOn: html ] ]