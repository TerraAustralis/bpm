rendering
renderEditControlOn: html component: fieldComponent
  | items input select |
  useCompletion
    ifTrue: [ 
      input := html textInput.
      html key ifNotNil: [ input id: html key ].
      input
        class: cssClass;
        value: (fieldComponent stateAt: #'searchString');
        callback: [ :value | 
              value
                ifNotNil: [ fieldComponent setCache: (self search: value component: fieldComponent) ] ].
      html div
        class: 'autocomplete';
        script:
            (html prototype autocompleter
                onSelected:
                    (html prototype request triggerFormElement: html key);
                element: html key;
                on: #'renderListOn:' of: fieldComponent).
      html text: ' (type first letters)' ]
    ifFalse: [ 
      items := self valuesForFieldComponent: fieldComponent.
      useRadio
        ifTrue: [ self renderEditUsingRadiosOn: html component: fieldComponent items: items ]
        ifFalse: [ 
          select := multiple
            ifTrue: [ html multiSelect ]
            ifFalse: [ html select ].
          html key ifNotNil: [ select id: html key ].
          select
            list: items;
            selected: fieldComponent getCache;
            callback: [ :val | fieldComponent setCache: val ];
            labels: [ :each | self labelFor: each ] ] ]