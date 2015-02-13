initialize-release
asReplyToCase: aCase

	case := aCase.
	author := self currentUser.
	subject := self inRe: aCase subject.
	origin := #web