render
renderContentOn: html
  | formId useNosyList |
  "self session clearJumpTo."
  html heading: 'Reply'.
  formId := 'noteeditor' , html allocateKey asString.
  html form
    id: formId;
    with: [ 
          html
            label: 'Subject'
            field: [ :id | 
              html textInput
                id: id;
                value: note subject;
                size: 40;
                callback: [ :val | note subject: val ] ]
            tooltip: 'The subject of the note'.
          html
            label: 'Note'
            field: [ :id | 
              html textArea
                id: id;
                columns: 80;
                rows: 20;
                value: note description;
                callback: [ :desc | note description: desc ].
              html break.
              html anchor
                callback: [ note addQuote ];
                with: 'Add quoted text'	"submitFormNamed: formId;" ]
            tooltip: 'The note itself'.
          html break.	"Work in progress!!!"	"useNosyList := self note case process settingAt: #useNosyList.
		useNosyList ifTrue: ["
          html
            label: 'Also send as email'
            field: [ :id | 
              html checkbox
                id: id;
                value: note parentOrCase cameByEmail;
                callback: [ :val | sendAsMail := val ].
              html
                text: ' to ';
                render: note parentOrCase author ]
            tooltip:
              'Additionally send the note as a regular email to the author of the parent note or reporter of the case.'.	"]."
          html submitButton
            text: 'Save';
            callback: [ self save ].
          html submitButton
            text: 'Cancel';
            callback: [ self cancel ] ]