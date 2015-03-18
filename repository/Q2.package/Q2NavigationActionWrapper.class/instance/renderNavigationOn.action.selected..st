render
renderNavigationOn: html action: aBlock selected: selected
  "Include me as a link with description as tooltip."

  | anchor |
  html div
    tooltip: description;
    with: [ 
          anchor := html anchor.	"	component == selected ifTrue: [anchor id: #option-selected]."
          anchor
            class: #'option';
            class: 'layout__item';
            callback: block;
            with: label ]