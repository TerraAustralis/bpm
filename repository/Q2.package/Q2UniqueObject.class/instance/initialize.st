initialize-release
initialize
  "The current running txn either gives us a new UUID (and remembers it)
	or gives us an old one if it is being replayed."

  id := self newUUID asString.
  super initialize