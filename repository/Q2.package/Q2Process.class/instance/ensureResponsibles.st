roles
ensureResponsibles
	"Go through all cases in the inbox stage and make sure each one
	that has passed the time limit gets a responsible assigned."

	| maxAge |
	maxAge := self settingAt: #allowNobodyResponsibleSeconds.
	maxAge > 0 ifTrue: [
		workflow hasInbox ifTrue: [ "we check because incomplete Processes may not have it"
			workflow inbox cases do: [:case |
				(case nobodyResponsible and: [case ageInSeconds > maxAge])
					ifTrue: [model setResponsible: case forceResponsible forCase: case]]]]