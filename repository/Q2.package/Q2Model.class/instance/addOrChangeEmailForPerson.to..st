users
addOrChangeEmailForPerson: aPerson to: newEmail
	"We need to check collision with another person and we need to
	update our MagmaCollection."

	newEmail ~= '' ifTrue: [
		(self findPersonByEmail: newEmail)
			ifNotNil:[ self error: 'Another person already has this email: ', newEmail]].

	self noteOldKeysFor: aPerson.
	aPerson basicEmail: newEmail.
	self addPerson: aPerson