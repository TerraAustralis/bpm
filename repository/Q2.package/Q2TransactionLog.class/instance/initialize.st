as yet unclassified
initialize
  transactions := Q2Session current dbSession newDBCollection.
  Q2Session current dbSession addIntegerIndex: #'number' on: transactions.
  counter := Q2Platform current newCounter.
  counter value: 50000