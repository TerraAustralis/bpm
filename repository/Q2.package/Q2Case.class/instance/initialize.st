initialize-release
initialize

	super initialize.
	self subject: ''.
	description := ''.
	roles := self newRolesCollection.
	forms := OrderedCollection new.
	transactions := Q2TransactionCollection new.
	self initializeExtras