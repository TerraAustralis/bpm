clearup/setup
deleteDatabase
	"Shutdown all sessions and delete database."

	self clear.

	 [factory delete ] on: MagmaWarning do: [:ex | ex resume: true ].