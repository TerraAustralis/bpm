initialize-release
fromMailItem: mailItem case: parentCase 
	"Initialize this note for the given case with the
	content from the pop mailitem."

	"Set a bunch of fields in the note."
	case := parentCase.
	author := case process importedUserOrPersonFor: (mailItem sender).
	subject := self class subjectWithoutReference: mailItem subject.
	description := mailItem description.
"	created := mailItem created."
	origin := #email.

	"Add persons that wants to be alterted when a note is added to this case. (?)"
	mailItem alerted do: [:item |
		case model 
			add: (case process importedUserOrPersonFor: item) 
			inRole: case alertedRole
			forCase: case ].

	"Add persons that are interested in this case. (?)"
	mailItem interested do: [:item |
		case model 
			add: (case process importedUserOrPersonFor: item) 
			inRole: case interestedRole
			forCase: case].