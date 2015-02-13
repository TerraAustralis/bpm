as yet unclassified
addStages
	model workflow stagesDo: [:each | | style |
		style := Dictionary new.
		"style at: #fillcolor put: ( ( model model settingAt: #Q2CaseColorSetting) 
			colorAt: each name)."
		style at: #fillcolor put: #gray.
		each isClosed ifTrue: [style at: #fillcolor put: #palegreen ].
		each isNew ifTrue: [style at: #fillcolor put: #orange ].
		each isInbox ifTrue: [style at: #fillcolor put: #red ].
		style at: #q2id put: each id printString.
	 
		graph 
			add: each name utf8ToIso
			with: style associations, (self styleForStage: each)
		].