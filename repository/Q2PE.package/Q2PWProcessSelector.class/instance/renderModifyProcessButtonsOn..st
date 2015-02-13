rendering/updating
renderModifyProcessButtonsOn: html
  "we display the button, and disable if the data is not yet valid, we should be periodically updated"

  | processNameExists disabled |
  processNameExists := (self model processes collect: [ :p | p name ])
    includes: newProcessName.
  disabled := newProcessName isEmpty | processNameExists.
  processNameExists
    ifFalse: [ 
      html button
        disabled: disabled;
        onClick:
            (html prototype evaluator
                triggerFormElement: 'newProcessNameField';
                callback: [ :s | self doCreateProcess ];
                onComplete:
                    (html prototype evaluator callback: [ :s | self suFullUpdate: s ]));
        tooltip: 'Create New Process (to delete process type its name)';
        with: 'Create Process' ]
    ifTrue: [ 
      html button
        onClick:
            (html prototype evaluator
                triggerFormElement: 'newProcessNameField';
                callback: [ :s | self doDeleteProcess ];
                onComplete:
                    (html prototype evaluator callback: [ :s | self suFullUpdate: s ]));
        tooltip: 'Delete This Process';
        with: 'Delete Process' ].
  html button
    disabled: disabled;
    onClick:
        (html prototype evaluator
            triggerFormElement: 'newProcessNameField';
            callback: [ :s | self doCopyProcess ];
            onComplete:
                (html prototype evaluator callback: [ :s | self suFullUpdate: s ]));
    tooltip: 'Copy This Process (without cases)';
    with: 'Copy Process'.
  html button
    disabled: disabled;
    onClick:
        (html prototype evaluator
            triggerFormElement: 'newProcessNameField';
            callback: [ :s | self doRenameProcess ];
            onComplete:
                (html prototype evaluator callback: [ :s | self suFullUpdate: s ]));
    tooltip: 'Rename Selected Process';
    with: 'Rename Process'