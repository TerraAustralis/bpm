rendering
renderUploaderOn: html component: fieldComponent
  html fileUpload
    callback: [ :f | 
      (f notNil and: [ f fileName notEmpty ])
        ifTrue: [ 
          fieldComponent
            addToCache:
              (Q2Attachment
                content: (Q2File fileName: f fileName content: f rawContents)
                case: fieldComponent model target) ] ].
  html
    button: 'Upload file'
    tooltip: 'Start the actual upload of the file to the server'