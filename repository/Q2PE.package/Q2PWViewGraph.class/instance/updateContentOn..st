rendering
updateContentOn: html
  html
    small: [ 
      html anchor
        onClick:
            (html prototype evaluator callback: [ :s | self suGraphUpdate: s ]);
        with: '(update)' ].
  html div
    id: 'workflow-graph';
    with: [ 
          self updateGraphFormOn: html.
          html div
            id: 'workflow-graph-focus';
            with: [ self updateGraphFocusOn: html ] ]