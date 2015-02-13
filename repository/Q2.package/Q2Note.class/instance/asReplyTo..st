initialize-release
asReplyTo: aNote

	case := aNote case.
	author := self currentUser.
	parent := aNote.
	subject := self inRe: aNote subject.
	origin := #web