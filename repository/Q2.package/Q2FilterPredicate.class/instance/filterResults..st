filtering
filterResults: aCollection
  "If this predicate restricts the process - use it to restrict the given list of processes."

  ^ aCollection select: self filterBlock