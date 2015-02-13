render
renderContentOn: html
  "This is the navigation area to the left."

  html div
    with: [ 
      html image
        url: Q2DefaultResources / Q2Object settings logo;
        style: 'width:100%;padding-top:10px;';
        altText: 'logo'.
      self noDb
        ifTrue: [ 
          "this is a local installation without a downloaded mirror"
          html
            text: 'No mirror installed';
            break ]
        ifFalse: [ 
          self isMirror
            ifTrue: [ 
              html
                strong: 'Mirror: ';
                break;
                text: self model prefix;
                break.
              html
                strong: 'Owner: ';
                break;
                text: self model owner fullName ] ].
      html
        render: navigation;
        break;
        break.
      self renderPluginsOn: html.
      html render: keepAliveUpdater ]