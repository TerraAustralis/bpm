rendering
renderImage: image on: html
  image isNil
    ifTrue: [ html text: '<none>' ]
    ifFalse: [ html image url: image urlPath ]