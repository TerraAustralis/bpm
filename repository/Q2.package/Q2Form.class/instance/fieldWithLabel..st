accessing
fieldWithLabel: aLabel
  ^ fields detect: [ :f | f label = aLabel ]