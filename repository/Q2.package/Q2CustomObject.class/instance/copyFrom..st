accessing
copyFrom: aCustomObjectOrArray
  "Copy all values preserving identity."

  aCustomObjectOrArray do: [ :obj | objects add: obj ]