rendering
renderAttachments: attachments on: html
  html
    table: [ 
      attachments isEmpty
        ifTrue: [ html text: '<none>' ]
        ifFalse: [ 
          attachments
            do: [ :attachment | 
              html
                tableRow: [ 
                  html
                    tableData: [ 
                      html
                        anchor: [ 
                          html image url: Q2DefaultResources / 'fileicon.gif'.
                          html html: attachment localFileName ]
                        callback: [ attachment downloadInSession: self session ]
                        tooltip: 'Download file' ].
                  html
                    tableData: [ html html: ' (' , attachment sizeString , ')' ] ] ] ] ]