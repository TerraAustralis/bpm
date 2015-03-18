render
renderContentOn: html
  "This is the navigation area to the left."

  html div
    with: [ 
      html image
        url: NextroundBPMFileLibrary / 'imageslogoPng';
        altText: 'logo'.	"style: 'width:100%;padding-top:10px;';"
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