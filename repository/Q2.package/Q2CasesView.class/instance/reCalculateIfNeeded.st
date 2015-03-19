private
reCalculateIfNeeded
  "Recalculate if db has changed."

  self calculate.
  self flag: #'q2TxnLogTodo'	" fix the txnmarker"	"txnMarker = self model txnMarker
    ifFalse: [ 
      self calculate.
      txnMarker := self model txnMarker ]"