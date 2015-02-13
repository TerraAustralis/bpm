rendering
renderContentOn: html
  | horizontalGap |
  horizontalGap _ 30.	"processes _ self currentUser processes."
  html
    form: [ 
      html
        table: [ 
          html
            tableRow: [ 
              html tableData
                with: [ html text: 'Here you can view Next Round usage statistics' ].
              html tableData with: [ html space: horizontalGap ].
              html tableData with: [ self renderProcessSelection: html ].
              html tableData with: [ html space: horizontalGap ].
              html tableData with: [ self renderResolutionSelection: html ] ].
          html
            tableRow: [ 
              html tableData
                align: 'center';
                colSpan: 5;
                with: [ html submitButton text: 'Show' ] ] ] ]