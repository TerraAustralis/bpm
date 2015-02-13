services
allServices
	"self allServices"

	^(Q2Service allSubclasses reject: [:c | c subclasses notEmpty])