building
asComponentIn: aComponent
	"We ask the containing component about its preferred child component class."
	
	^(aComponent childComponentClass parent: aComponent) field: self