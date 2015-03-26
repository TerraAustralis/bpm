rendering
render: fieldComponent label: label control: aBlock tooltip: tooltip help: helpObject
  "Render a label tag with an id that the corresponding input tag needs to use inside.
	We add a tooltip to the label which since the label tag spans the control, will be shown
	for both the label and input."

  | id fileName script rowClass |
  rowcnt ifNil: [ rowcnt := 0 ].
  rowClass := rowcnt odd
    ifTrue: [ #'odd' ]
    ifFalse: [ #'even' ].
  id := renderer allocateKey.
  fileName := self messageIconFileName: fieldComponent field help: helpObject.
  renderer div
    class: 'oneRow';
    class: rowClass;
    tooltip: tooltip;
    with: [ 
          renderer div
            class: #'lc';
            with: [ 
                  renderer label
                    for: id;
                    with: [ renderer html: label ] ].
          renderer div
            class: #'hc';
            with: [ 
                  fileName
                    ifNotNil: [ 
                      | elemId |
                      elemId := renderer allocateKey.
                      script := (renderer prototype element
                        id: elemId;
                        hide;
                        return: false)
                        condition:
                            (renderer prototype element
                                id: elemId;
                                visible);
                        insertAfter:
                            (renderer prototype updater
                                id: elemId;
                                callback: [ :html | (self wikiViewerFor: helpObject) renderViewerOn: html id: elemId ])
                                ,
                                  (renderer prototype effect
                                    id: elemId;
                                    appear).
                      renderer anchor
                        tabIndex: -1;
                        onClick: script;
                        class: #'helpanchor';
                        with: [ 
                              renderer image
                                class: 'help';
                                url: Q2DefaultResources / fileName ] ] ].
          (helpObject isNil not
            and: [ self currentUserSettings showIntegratedHelp ])
            ifTrue: [ 
              renderer div
                class: 'helpWiki';
                with: [ 
                      renderer div
                        id: renderer key;
                        style: 'display:none';
                        with: 'Loading...' ] ].
          renderer div
            class: #'cc';
            with: [ 
                  renderer div
                    class: #'control';
                    with: [ renderer render: aBlock ] ] ]