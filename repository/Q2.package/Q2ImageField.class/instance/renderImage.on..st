rendering
renderImage: image on: html
  image isNil
    ifTrue: [ html text: '<none>' ]
    ifFalse: [ 
      html image
        url: image urlPath;
        width: '48px';
        height: '48px' ]