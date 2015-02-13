navigation
addHelp
	| section |
	section := navigation heading: 'Help' description: 'Get help or other information'.
	section add: (Q2Information parent: self)