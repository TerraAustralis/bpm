as yet unclassified
anchor: text callback: aBlock tooltip: tooltip
  "Create an anchor."

  ^ self anchor
    callback: aBlock;
    tooltip: tooltip;
    with: text;
    yourself