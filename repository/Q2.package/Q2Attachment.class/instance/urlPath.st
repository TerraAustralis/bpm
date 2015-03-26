accessing
urlPath
  "Answer a path for use in an url"

  ^ self entry fullName
    copyFrom: Q2GemStoneFileDirectory default pathName size + 1
    to: self entry fullName size