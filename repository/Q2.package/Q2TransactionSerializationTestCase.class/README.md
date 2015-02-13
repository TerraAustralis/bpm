I'm an api like class for transaction correctness testing. I'm using magma to save your databases. I create snapshots into the magma-snapshots directory which can be exchanged and compared with the current database.

I will ERASE your current magma database!!!

I'm task based and offer you two simple wrappers for tasks:
- #initializeDatabaseWith: 
	This method accepts a block which will initialize your database that will be serialized and rebuilt from the generated transactions
- #serializeAndVerify:
	This method serializes your database, then rebuilds it and checks if the old and new are the same

I have four methods which can speed up the tests:
- #recreateEmptyDatabase 
- #recreateBootStapDatabase 
- #recreateSimpleDatabase 
- #recreateTestDatabase 
These methods overwrite the current database with the default databases.

Subclass me and write test methods like this:

testSomething
	self
		initializeDatabaseWith: [ self recreateEmptyDatabase.
			... ];
		serializeAndVerify;
		go
---
