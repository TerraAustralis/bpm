rendering
renderKeysOn: html component: fieldComponent
  | input select keys |
  useCompletionKeys
    ifTrue: [ 
      keys := self searchKeysForFieldComponent: fieldComponent.
      keys size <= 1
        ifTrue: [ ^ self ].
      input := html textInput.
      html key ifNotNil: [ input id: html key ].
      input class: cssClass.
      input
        value: (fieldComponent stateAt: #'searchStringKeys');
        callback: [ :value | 
              value
                ifNotNil: [ fieldComponent getCache key: (self searchKey: value component: fieldComponent) ] ].
      html div
        class: 'autocomplete';
        script:
            (html autocompleter
                element: html key;
                on: #'renderListKeysOn:' of: fieldComponent).
      html
        space;
        text: '(type first letters)' ]
    ifFalse: [ 
      keys := self keysForFieldComponent: fieldComponent.
      keys size <= 1
        ifTrue: [ ^ self ].
      select := html select.
      html key ifNotNil: [ select id: html key ].
      self submitOnChange
        ifTrue: [ select onChange: 'submit()' ].
      select
        list: keys;
        selected: fieldComponent getCache key;
        callback: [ :val | fieldComponent getCache key: val ];
        labels: [ :each | self labelForKey: each ] ]