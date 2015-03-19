filtering
filterResults: aCollection
  "Filter the list of processes."

  | result |
  result := aCollection.
  predicates do: [ :predicate | result := predicate filterResults: result ].
  ^ result