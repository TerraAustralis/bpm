plugins support
initializePluginComponents
"here we fill the pluginComponents inst var by asking all our plugins if they want to render at our spot"
	| componentClass newDict plugins |
	pluginComponents ifNil: [ pluginComponents := Dictionary new ].
	self noDb ifTrue: [ ^self ].
	(componentClass := self pluginComponentClass) ifNil: [ ^ self ].

	newDict := Dictionary new.
	plugins := self plugins.
	pluginComponents ifNotEmpty: [
		pluginComponents associationsDo: [:assoc | 
			(plugins includes: assoc key) ifTrue: [ newDict at: assoc key put: assoc value. plugins remove: assoc key ]
		]
	].
	self plugins do: [ :plugin | 
		(componentClass parent: self plugin: plugin) ifNotNilDo: [ :plugC | 
			newDict at: plugin put: plugC ]
	].
	pluginComponents := newDict.