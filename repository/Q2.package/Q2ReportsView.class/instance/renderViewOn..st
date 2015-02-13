rendering
renderViewOn: html
  | user |
  user := self session currentUser.
  html
    form: [ 
      html
        label: 'Report definitions'
        field: [ :id | 
          html select
            id: id;
            size: 1;
            onChange: 'submit()';
            list: user reportDefinitions;
            selected: self current;
            callback: [ :value | 
                  current := value.
                  reportName := current name.
                  selector := current selector.
                  filter := current filter.
                  fields := current fields ] ]
        tooltip: 'Select one of your personal report definitions.'.
      html horizontalRule ].
  html
    form: [ 
      html
        label: 'Report definition name'
        field: [ :id | 
          html textInput
            id: id;
            size: 50;
            value: (self reportName ifNil: [ 'New report definition' ]);
            callback: [ :value | reportName := value ] ]
        tooltip: 'This is the name of the report definition.'.
      html
        label: 'Processes'
        field: [ :id | 
          html multiSelect
            id: id;
            size: 10;
            onChange: 'submit()';
            list: user processes;
            selected: self processes;
            callback: [ :value | 
                  processes := value.
                  exportFields := nil ] ]
        tooltip:
          'Select one or more processes that you wish to extract fields from.'.
      html
        label: 'Filter'
        field: [ :id | 
          html select
            id: id;
            size: 1;
            onChange: 'submit()';
            list:
                ((OrderedCollection with: '<Empty filter>')
                    addAll: user availableFilters;
                    yourself);
            selected: self filter;
            callback: [ :value | filter := value ] ]
        tooltip:
          'Select a filter that will be applied to restrict cases reported.'.
      html
        label: 'Collection'
        field: [ :id | 
          html select
            id: id;
            size: 1;
            onChange: 'submit()';
            list: Q2ReportSource subclasses;
            selected: self selector;
            callback: [ :value | 
                  selector := value.
                  exportFields := nil ] ]
        tooltip:
          'Select the collection of objects that you wish to operate on. Normally Cases.'.
      html
        label: 'Fields'
        field: [ :id | 
          html multiSelect
            id: id;
            size: 10;
            onChange: 'submit()';
            list: self exportFields;
            selected: (self fields ifNil: [ #() ]);
            callback: [ :value | 
                  fields := value.
                  exportFields := nil ];
            labels: [ :obj | 
                  (obj isKindOf: Q2Field)
                    ifTrue: [ ' - ' , obj displayString ]
                    ifFalse: [ obj displayString ] ] ]
        tooltip: 'Multiselect the fields that you wish include in the report.'.
      html submitButton
        text: 'Save';
        callback: [ self saveItem: current ].
      html submitButton
        text: 'Save as new';
        callback: [ self saveItem: nil ].
      html submitButton
        text: 'Delete';
        callback: [ 
              user reportDefinitions remove: current.
              current := nil.
              reportName := nil.
              selector := nil.
              filter := nil.
              fields := nil ].
      html submitButton
        text: 'Cancel';
        callback: [ 
              current := nil.
              reportName := nil.
              selector := nil.
              filter := nil.
              fields := nil ].
      html horizontalRule.
      html
        label: 'Export format'
        field: [ :id | 
          html select
            id: id;
            size: 1;
            list: Q2Report formats keys;
            selected: nil;
            callback: [ :value | format := value ] ]
        tooltip:
          'This is the format of the file produced when you press Export.'.
      html submitButton
        text: 'Export';
        callback: [ 
              | exportDef "Get all current values - the def may not be saved (yet)." report |
              exportDef := Q2ReportDefinition for: selector.
              exportDef
                fields:
                  (fields
                    inject: OrderedCollection new
                    into: [ :coll :each | 
                      (each isKindOf: Q2Form)
                        ifTrue: [ coll addAll: each fields ]
                        ifFalse: [ coll add: each ].
                      coll ]).
              exportDef
                filter:
                  (filter = '<Empty filter>'
                    ifTrue: [ nil ]
                    ifFalse: [ filter ]).	"TimeProfileBrowser onBlock: [1 timesRepeat:  [ "
              report := (Q2Report from: exportDef) generateReport.	"]]."
              exportName := report perform: (Q2Report formats at: format) ].
      exportName
        ifNotNil: [ 
          html break.
          html anchor
            url:
                'http://' , Q2Object settings serverMirrorHost , ':'
                    , Q2Object settings serverMirrorPort , '/'
                    , Q2Model settings reportsDirectory , '/' , exportName;
            with: exportName.
          html text: ' (Right-click link and choose "Save As...")' ] ]