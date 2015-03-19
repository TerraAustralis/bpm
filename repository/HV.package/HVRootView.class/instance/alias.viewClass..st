initalize-release
alias: anAlias viewClass: aClass
	"Set the default alias and viewClass if not already set."

	alias ifNil: [alias := anAlias].
	viewClass ifNil: [viewClass := aClass]