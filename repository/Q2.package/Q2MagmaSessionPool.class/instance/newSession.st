private
newSession
	"Get a chance to configure it. We assume that factory's #newSession gives different sessions."

	| session |
	session := factory newSession.
	session connectAs: 'gjallar'.
	Q2Log debug: 'Created new MagmaSession ', session id asString.
	^session