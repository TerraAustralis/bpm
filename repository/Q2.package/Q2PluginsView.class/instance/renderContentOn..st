as yet unclassified
renderContentOn: html
  | editor |
  html
    form: [ 
      html
        table: [ 
          self pluginsClass allSubclasses
            do: [ :subClass | 
              subClass allowMultipleInstances
                ifTrue: [ 
                  | count "multiple instances per plugin class" |
                  html
                    tableRow: [ 
                      html
                        tableData: [ 
                          html strong with: [ html text: subClass pluginName ].
                          html break.
                          html
                            text: subClass description;
                            break;
                            break ].
                      html
                        tableData: [ 
                          html submitButton
                            callback: [ subClass new registerIn: self registryOwner ];
                            value: 'Add new' ] ].	"show the config for each active plugin"
                  count := 1.
                  self registryOwner pluginRegistry
                    allPluginsDo: [ :plugin | 
                      (plugin isMemberOf: subClass)
                        ifTrue: [ 
                          html
                            tableRow: [ 
                              (html tag: 'td')
                                attributeAt: 'style' put: 'padding-left:20px';
                                with: [ 
                                      html div with: [ html strong with: [ html text: count displayString , '.' ] ].
                                      editor := self editors
                                        at: plugin
                                        ifAbsentPut: [ 
                                          (plugin respondsTo: #'getEditor')
                                            ifTrue: [ plugin getEditor ]
                                            ifFalse: [ nil ] ].
                                      editor
                                        ifNotNil: [ 
                                          editor parent: self.
                                          html div
                                            class: 'pluginConfig';
                                            with: [ editor renderContentOn: html ] ] ].
                              html
                                tableData: [ 
                                  html submitButton
                                    callback: [ plugin unregister ];
                                    value: 'Remove' ] ].
                          count := count + 1 ] ] ]
                ifFalse: [ 
                  | active |
                  "single instance per plugin class"
                  html
                    tableRow: [ 
                      html
                        tableData: [ 
                          html strong with: [ html text: subClass pluginName ].
                          html break.
                          html
                            text: subClass description;
                            break;
                            break ].
                      active := self registryOwner pluginRegistry plugins
                        anySatisfy: [ :plugin | plugin class = subClass ].
                      html
                        tableData: [ 
                          active
                            ifFalse: [ 
                              html submitButton
                                callback: [ subClass new registerIn: self registryOwner ];
                                value: 'Start' ]
                            ifTrue: [ 
                              html submitButton
                                callback: [ self registryOwner removePluginClass: subClass ];
                                value: 'Stop' ] ] ] ] ] ] ]