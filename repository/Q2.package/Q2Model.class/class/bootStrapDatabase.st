database
bootStrapDatabase
	"Run the basic bootstrap as the first Txn to gather UUIDs correctly.
	We can not use sessionDo: since there are no users yet."

	Q2Session current model bootStrap.
	Q2Session releaseCurrent