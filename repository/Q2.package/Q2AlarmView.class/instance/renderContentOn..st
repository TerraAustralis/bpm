render
renderContentOn: html
  | alarms editmode block items editlink deletelink tmpSel tmpDays |
  alarms := parent case alarms , newalarms.
  html heading
    level2;
    with: 'Alarms (' , alarms size asString , ')'.
  html form
    id: 'alarmeditor' , html allocateKey asString;
    with: [ 
          html table
            class: #'formtable';
            with: [ 
                  alarms size > 0
                    ifTrue: [ 
                      items := #(#'Description' #'Active' #'Date' #'Recurring').
                      block := [ :item | 
                      html tableHeading
                        class: 'reportHeading';
                        with: item ].
                      html tableRow: [ items do: block ].
                      block := [ :item | 
                      html tableData
                        class: 'alertData';
                        with: item ] ].
                  alarms
                    do: [ :alarm | 
                      editmode := editors at: alarm ifAbsent: [ nil ].
                      editmode
                        ifNotNil: [ 
                          tmpDays := #(7 14 28).
                          tmpDays
                            do: [ :days | 
                              days == alarm repeatDays
                                ifTrue: [ tmpSel := days ] ].
                          items := {[ 
                          html textInput
                            value: alarm subject;
                            callback: [ :val | alarm subject: val ] ].
                          [ 
                          html checkbox
                            value: alarm enabled;
                            onTrue: [ alarm enable ] onFalse: [ alarm disable ] ].
                          [ 
                          html
                            datePicker:
                              Q2DefaultResources / Q2Object settings calendarImage
                            config: ''
                            value: alarm date
                            callback: [ :d | alarm date: d ] ].
                          [ 
                          html select
                            size: 1;
                            beOptional;
                            optionalLabel: 'No';
                            list: tmpDays;
                            selected: tmpSel;
                            labels: [ :tr | 'Every ' , tr asString , ' days' ];
                            callback: [ :days | alarm repeat: days ] ].
                          [ 
                          html submitButton
                            text: 'Save';
                            callback: [ 
                                  self addOrUpdateAlarm: alarm.
                                  editors removeKey: alarm.
                                  newalarms reset ] ].
                          [ 
                          html submitButton
                            text: 'Cancel';
                            callback: [ editors removeKey: alarm ] ]} ]
                        ifNil: [ 
                          editlink := [ 
                          html anchor
                            callback: [ self openAlarmEditorFor: alarm ];
                            with: 'Edit alarm' ].
                          deletelink := [ 
                          html anchor
                            callback: [ 
                                  (self
                                    confirm:
                                      ('Are you sure you want to delete alarm "{1}"?' format: {(alarm subject)}))
                                    ifTrue: [ self deleteAlarm: alarm ] ];
                            with: 'Delete alarm' ].
                          items := {(alarm subject).
                          [ 
                          alarm enabled
                            ifTrue: [ html text: 'Yes' ]
                            ifFalse: [ html text: 'No' ] ].
                          (alarm date).
                          (alarm repeatString).
                          editlink.
                          deletelink} ].
                      html tableRow: [ items do: block ] ] ] ].
  html div
    class: 'commentsub';
    with: [ 
          html anchor
            callback: [ self openAlarmEditorFor: (newalarms addLast: (Q2Alarm case: case)) ];
            with: 'Add alarm' ]