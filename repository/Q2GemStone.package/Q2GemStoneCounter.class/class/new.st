as yet unclassified
new
  | newInstance |
  (Counters ifNil: [ Counters := OrderedCollection new ])
    add: (newInstance := self basicNew).
  newInstance
    counterNumber: Counters size;
    intialize.
  ^ newInstance