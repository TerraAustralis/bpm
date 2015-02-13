rendering
renderTabHeaderOn: html for: aTabBook selected: selected
  | fileName id |
  fileName := self messageIconFileName.
  aTabBook renderTabDefaultHeaderOn: html for: self selected: selected.
  selected
    ifTrue: [ 
      self formHelpId: (id := html allocateKey).
      fileName
        ifNotNil: [ 
          | script |
          script := (html prototype element
            id: id;
            hide;
            return: false)
            condition:
                (html prototype element
                    id: id;
                    visible);
            insertAfter:
                (html prototype updater
                    id: id;
                    callback: [ :updater | self renderFormHelpOn: updater ])
                    ,
                      (html scriptaculous effect
                        id: id;
                        appear).
          html anchor
            tabIndex: -1;
            onClick: script;
            class: #'helpanchortab';
            with: [ 
                  html image
                    class: #'help';
                    url: Q2DefaultResources / fileName ] ] ]
    ifFalse: [ 
      fileName
        ifNotNil: [ 
          html anchor
            onClick:
                (html prototype updater
                    id: aTabBook contentId;
                    callback: [ :render | aTabBook selectAndUpdate: self model form label on: render ];
                    triggerForm: aTabBook formId);
            with: [ 
                  html image
                    class: #'help';
                    url: Q2DefaultResources / fileName ]	"	onSuccess: (  (html updater id: id; callback: [ :render | self renderFormHelpOn: render. ]; displayString) , ';', (html effect id: id; appear; displayString)  );" ] ]