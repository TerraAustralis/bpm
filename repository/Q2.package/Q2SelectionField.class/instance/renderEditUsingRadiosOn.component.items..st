rendering
renderEditUsingRadiosOn: html component: fieldComponent items: items
  radioGroup := html radioGroup.
  radioGroup
    selected: fieldComponent getCache;
    callback: [ :val | fieldComponent setCache: val ].
  items
    do: [ :item | 
      html div
        class: 'radioOption';
        with: [ 
              radioGroup radioButton value: item.
              html text: item ] ]