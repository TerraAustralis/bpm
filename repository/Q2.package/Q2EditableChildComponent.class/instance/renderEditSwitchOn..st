render
renderEditSwitchOn: html
  html div
    class: 'edit-mode';
    with: [ 
          html
            anchor: [ html image url: Q2DefaultResources / 'orange-wrench.png' ]
            callback: [ self toggleMode ]
            tooltip: 'Enter edit mode' ]