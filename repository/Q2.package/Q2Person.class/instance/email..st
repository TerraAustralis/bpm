accessing
email: newEmail
	"Persons are indexed by email in the model, so we need to update that binding."

	newEmail = email ifFalse: [self model addOrChangeEmailForPerson: self to: newEmail]