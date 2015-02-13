as yet unclassified
exportFields
  exportFields
    ifNil: [ 
      "If not populated - calculate it"
      exportFields := OrderedCollection new.
      self processes
        do: [ :proc | 
          proc exportForms
            do: [ :export | 
              export selector = self selector
                ifTrue: [ 
                  exportFields add: export form.
                  (self fields includes: export form)
                    ifFalse: [ 
                      export form fields
                        do: [ :anExportField | 
                          "Don't export Q2Divider's"
                          ({Q2DividerField} includes: anExportField class)
                            ifFalse: [ exportFields add: anExportField ] ] ] ] ] ] ].
  ^ exportFields