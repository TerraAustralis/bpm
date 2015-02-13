transactions
apply
  "Perform the txn. We only add the link to those
	cases that we managed to reconnect."

  link from isString
    ifFalse: [ 
      link from addLink: link.
      link from addTransaction: self ].
  link to isString
    ifFalse: [ 
      link to addLink: link.
      link to addTransaction: self ]