as yet unclassified
renderContentOn: html 
	"Show a lot of interesting information about the system."

	| |
"	pool := self session pool."
	html heading: label.

"	html label: 'Server started' data: (Time humanWordsForSecondsAgo: (DateAndTime now - Q2Gjallar timeStarted) asSeconds).
	html label: 'Live user sessions' data: Q2Session allInstances size.
	html label: 'Live components'
		data: Q2Component allSubInstances size.
	html label: 'Live database sessions' data: MagmaSession allInstances size.
	html label: 'Database session pool'
		data: (pool totalSessionCount) printString , ' (' 
				, pool freeSessionCount printString , ' free, ' 
				, pool usedSessionCount printString , ' used)'.
	self noDb 
		ifFalse: 
			[html heading level2; with: 'Model'.
			html label: 'Transactions total' data: self model transactionLog size ].
	html heading level2 with: 'Session'.
	html label: 'Cached object count'
		data: self magmaSession cachedObjectCount.
	html heading level2 with: 'Repository'.
	html label: 'File size'
		data: self magmaSession repositoryController repository objectFileSize.
	html label: 'Object count'
		data: self magmaSession repositoryController objectCount.
	html label: 'Average object size'
		data: self magmaSession repositoryController averageObjectSize.
"
	html paragraph: 'Test system for demo purposes.'. 
	html heading level2; with: 'Software'.
	html label: 'Version' data: Q2Gjallar version.

	html heading level3; with: 'Major library versions'.
	html unorderedList 
		list: (#(
				'Q2'
				'Magma client'
				'Magma server'
				'Seaside2'
			) collect: [:nm | (MCPackage named: nm) workingCopy ancestry ancestorString]).
"	html heading: 'Changelog' level: 3.
	changelog := showFull 
				ifTrue: [self class changelog]
				ifFalse: [self class lastChangelog].
	html html: ((Q2WikiPage source: changelog) swikifyFor: self
				inApplication: self application).
	html break.
	showFull 
		ifFalse: 
			[(html anchor)
				callback: [showFull := true];
				tooltip: (html boxover: 'Show full changelog');
				text: 'Show full changelog']
		ifTrue: 
			[(html anchor)
				callback: [showFull := false];
				tooltip: (html boxover: 'Show only last changelog');
				text: 'Show last changelog']"
			
		
	html heading: 'Platform specific information'.
	
	Q2Platform displayPlatformInformationOn: html