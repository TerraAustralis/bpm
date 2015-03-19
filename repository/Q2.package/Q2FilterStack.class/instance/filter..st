filtering
filter: aCollection
  "Perform free text search (always) and then perform Magma query on
	all predicates with indices combined with the free text hits and finally -
	if the result is small enough - perform regular non indexed filtering (select)."

  | result |
  "Q2Platform ifGemStone: [ ^ aMagmaCollection ]."
  filtersChanged := false.
  result := aCollection.
  freetextFilter freetext
    ifNotEmpty: [ 
      freetextIds := freetextFilter searchProcesses: self processes.
      freetextFilter ifError: [ ^ #() ] ].
  filters do: [ :filter | result := filter filterResults: result ].
  ^ self nonIndexedFilter: result