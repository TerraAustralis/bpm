sample
loadDemo4
	"Load the model with the demo processes."

	| simplePrototype root sup bugs req cobj kalle sven form priorityCo |

	root := users detect: [:u | u name = 'root'].
	root password: 'goldstar'.

	"Create the empty Process prototype"
	self newProcessPrototype: 'Empty prototype'.

	"Create the simple Process prototype"
	simplePrototype := self newProcessPrototype: 'Simple prototype'.
	simplePrototype loadSimple.

	self loadCustomObjects.
	cobj := self newCustomObjectTypeNamed: 'System'.
	cobj hasNil: true.
	cobj singleObjects: { 'DWH'. 'Marknadsrisk'. 'Intellimatch'. 'XOR'. 'MLC'. 'MxG'. 'DAP'. 'Sonic'}.

	"cobj2 := self newCustomObjectTypeNamed: 'Business unit'.
	cobj2 hasNil: true.
	cobj2 singleObjects: { 'FM'. 'FD'. 'FM+FD'}."

	sup := self createProcess: 'Support' fromPrototypeNamed: 'Simple prototype'.
	bugs := self createProcess: 'Bugs' fromPrototypeNamed: 'Simple prototype'.
	req := self createProcess: 'Requests' fromPrototypeNamed: 'Simple prototype'.

	{
		{'matti'. 'Matti'. 'Kodare'. 'matti.kodare@msc.se'. false}.
		{'maria'. 'Maria'. 'Hacker'. 'maria.hacker@msc.se'. false}.
		{'goran'. 'Göran'. 'Support'. 'goran.support@msc.se'. false}.
	} do: [:arr | | u |
		u := self newUser: arr first isoToUtf8.
		u person email: arr fourth isoToUtf8; firstName: arr second isoToUtf8 lastName: arr third isoToUtf8.
		arr fifth ifTrue: [u reporterOnly: true].
		sup addUser: u.
		bugs addUser: u.
		req addUser: u].

	"One guy making requests"
	kalle := self newUser: 'kalle'.
	kalle person email: 'kalle.krav@msc.se'; firstName: 'Kalle' lastName: 'Krav' isoToUtf8.
	sup addUser: kalle.
	req addUser: kalle.

	"One reporter that only can access Support"
	sven := self newUser: 'sven'.
	sven reporterOnly: true.
	sven person email: 'sven.reporter@msc.se'; firstName: 'Sven' lastName: 'Reporter' isoToUtf8.
	sup addUser: sven.

	"Create a form to hold some shared fields - that we will import and use in other Processes"
	form := self newFormNamed: 'Shared fields'.
	form newSelection name: 'severity'; label: 'Severity'; description: 'Select the level of severity you feel is appropriate';
		valuesProvider: (self findCustomObjectTypeNamed: 'Severity').
	form newSelection name: 'system'; label: 'System'; description: 'Select system for the case'; valuesProvider: (self findCustomObjectTypeNamed: 'System').

	priorityCo := self findCustomObjectTypeNamed: 'Priority'.
	form newSelection name: 'priority'; label: 'Priority'; description: 'Select internal priority level'; valuesProvider: priorityCo; defaultValue: priorityCo objects fourth.
	form newInteger name: 'hours'; label: 'Hours spent'; description: 'Total number of hours spent on this case'.

	sup loadDemo4Support.
	bugs loadDemo4Bugs.
	req loadDemo4Request