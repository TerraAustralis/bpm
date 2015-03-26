transactions
postApply
  "Now we can put the txn in the local collection."

  super postApply.
  case addTransaction: self