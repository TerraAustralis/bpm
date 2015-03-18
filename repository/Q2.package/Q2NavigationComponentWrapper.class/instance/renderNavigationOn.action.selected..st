render
renderNavigationOn: html action: aBlock selected: selected
  "Include me as a link with description as tooltip."

  | anchor |
  component isBlock
    ifFalse: [ 
      ^ component
        renderNavigationOn: html
        action: aBlock
        label: label
        description: description
        selected: selected ].	"If the component is a block we render this ourselves and lazily instantiate the component in the action block,
	the test ensures we only run this once."
  anchor := html anchor tooltip: description.
  component == selected
    ifTrue: [ anchor id: #'option-selected' ].
  anchor
    class: #'option';
    class: 'layout__item';
    callback: [ 
          component := component value.
          aBlock value: component ];
    with: label