rendering
renderContentOn: html
  "Let each component render itself as a navigation option."

  | selected |
  selected := self selection.
  html div
    class: divClass;
    with: [ 
          "		html unorderedList: ["
          components
            do: [ :each | 
              html div
                class: 'layout';
                with: [ 
                      each
                        renderNavigationOn: html
                        action: [ :comp | self selection: comp ]
                        selected: selected ] ] ]	"]"