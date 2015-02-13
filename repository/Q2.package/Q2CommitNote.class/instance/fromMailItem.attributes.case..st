initialize-release
fromMailItem: mailItem attributes: attrs case: parentCase 
	"Initialize this note for the given case with the content from the pop mailitem."

	| authorEmail |
	attributes := attrs.
	case := parentCase.
	authorEmail := (MailAddressParser addressesIn: (attributes at: #user)) first.
	author := case process importedUserOrPersonFor: (case process model findUserOrPersonByEmail: authorEmail).
	subject := 'Mercurial commit: ', (attributes at: #changeset). "self class subjectWithoutReference: mailItem subject."
	description := mailItem description. "this is the complete unparsed body"
	origin := #email