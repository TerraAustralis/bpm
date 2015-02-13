processing
updateRoot: aHtmlRoot
	"Only override if you want to automatically include new types of resources.
	The default implementation knows how to reference CSS, JS and FavIcons into aHtmlRoot."

	| selectors |

	Q2Object settings useExternalResources ifFalse: [^super updateRoot: aHtmlRoot].

	selectors := self selectorsToInclude.

	(selectors anySatisfy: [:each | each ~= #allScriptsJs and: [each endsWith: #Js] ])
		ifTrue: [ aHtmlRoot javascript url: (self urlOf: #allScriptsJs )].

	(selectors anySatisfy: [:each | each ~= #allStylesCss and: [each endsWith: #Css] ])
		ifTrue: [ aHtmlRoot stylesheet url: (self urlOf: #allStylesCss )].
	
	((selectors detect: [:each | (each endsWith: #Ico) ] ifNone: [ nil ]))
		ifNotNilDo: [:sel | 
			aHtmlRoot link beShortcutIcon; url: (self urlOf: sel) ]