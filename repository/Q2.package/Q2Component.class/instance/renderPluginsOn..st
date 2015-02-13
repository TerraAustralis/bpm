plugins support
renderPluginsOn: html
	"Subclasses should call this method in the proper place in #renderContentOn:
	in order to get plugins to render themselves in that spot."

	self initializePluginComponents.
	pluginComponents valuesDo: [ :component | html render: component ]