as yet unclassified
datePicker: imageUrl config: configString value: aValue callback: aBlock
  "The date picker default values comes from Q2StandardScripts>>calendarSetup."

  | text image config |
  text := self textInput.
  self key ifNotNil: [ text id: self key ].
  text size: 25.
  aValue ifNotNil: [ text value: aValue ].
  aBlock ifNotNil: [ text callback: aBlock ].
  config := ' inputField    : "' , text id , '"'.
  imageUrl
    ifNotNil: [ 
      self space.
      image := (self image url: imageUrl) id: self allocateKey.
      config := config , ', button        : "' , image id , '"' ].
  configString ifNotEmpty: [ config := config , ', ' , configString ].
  self script: 'Calendar.setup({' , config , '});'.
  ^ text