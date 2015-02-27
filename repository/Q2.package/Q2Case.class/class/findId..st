mapless
findId: anId
  "^ self bpmModel cases detect: [ :case | case id = anId ]"

  ^ super findId: anId