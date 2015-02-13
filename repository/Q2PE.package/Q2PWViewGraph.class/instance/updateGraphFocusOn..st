rendering
updateGraphFocusOn: html
  | pinX pinY |
  self recalculateFocus.
  graphFormClickY ifNil: [ ^ self ].	"Dont show pin in case edit, only in process edit"
  self usedForCaseEditing ifNotNil: [ ^ self ].
  graphFormClickedItem
    ifNotNil: [ 
      "self theFocusMarker"
      pinX := (graphFormClickX + graphFormOriginX - 7) printString.
      pinY := (graphFormClickY + graphFormOriginY) printString.
      self debug: 'Pin X:' , pinX , ' Y:' , pinY.
      html div
        style:
            'position: absolute ; visibility : visible ;  top :' , pinY , 'px ; left : '
                , pinX , 'px ';
        with: [ 
              html image
                url: Q2DefaultResources / 'pinblue.gif';
                altText: 'ok' ];
        tooltip: self selectedItem name ]