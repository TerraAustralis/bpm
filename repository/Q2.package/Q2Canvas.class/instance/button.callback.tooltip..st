as yet unclassified
button: text callback: callback tooltip: tooltip
  "Create a submit button."

  ^ self submitButton
    callback: callback;
    text: text;
    tooltip: tooltip