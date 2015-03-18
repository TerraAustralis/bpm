rendering
renderContentOn: html
  "This is the main entrance for Q2 and defines the main display.
	If we are not logged in we only present some statistics, a possible
	bulletin and a login dialog."

  "	MessageTally spyOn: ["

  html div
    class: 'pack';
    with: [ 
          html div
            id: 'left';
            class: 'pack__item';
            with: [ html render: left ].
          html div
            id: 'content';
            class: 'pack__item  u-p u-pt0';
            with: [ html render: content ] ]