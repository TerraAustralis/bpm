private
reviveSession: aSession
	"Abort aSession to get it up to date. We assume that it's clean (see #releaseSession:)."

	aSession abort.
	Q2Log debug: 'Revived (abort) MagmaSession ', aSession id asString.