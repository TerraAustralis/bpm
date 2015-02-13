rendering
renderValuesOn: html component: fieldComponent
  | input select values |
  useCompletion
    ifTrue: [ 
      values := self searchValuesForFieldComponent: fieldComponent.
      values size <= 1
        ifTrue: [ ^ self ].
      html key ifNotNil: [ input id: html key ].
      input class: cssClass.
      input
        value: (fieldComponent stateAt: #'searchString');
        callback: [ :value | fieldComponent getCache value: (self search: value component: fieldComponent) ].
      html div
        class: 'autocomplete';
        script:
            (html autocompleter
                element: html key;
                on: #'renderListOn:' of: fieldComponent).
      html text: ' (type first letters)' ]
    ifFalse: [ 
      values := self valuesForFieldComponent: fieldComponent.
      values size <= 1
        ifTrue: [ ^ self ].
      select := html select.
      html key ifNotNil: [ select id: html key ].
      self submitOnChange
        ifTrue: [ select onChange: 'submit()' ].
      select
        list: values;
        selected: fieldComponent getCache value;
        callback: [ :val | fieldComponent getCache value: val ];
        labels: [ :each | self labelFor: each ] ]