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
                class: 'layout u-p u-pr0 u-pt0';
                with: [ 
                      each
                        renderNavigationOn: html
                        action: [ :comp | self selection: comp ]
                        selected: selected ] ] ]	"]"