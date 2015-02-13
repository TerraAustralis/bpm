roles
responsibleValues
	"Return all users available to pick as responsible."

	| result process |
	process _ self process.
	result _ process personalImportedUsers.
	(self processSetting: #allowSettingResponsiblityToNobody)
		ifTrue: [result add: process nobodyUser].
	^result