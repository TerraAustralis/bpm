sample
loadDemo3
	"Load the model with the demo processes."

	| simplePrototype root cus sec let cobj cobj2 |

	root := users detect: [:u | u name = 'root'].
	root password: 'goldstar'.

	"Create the empty Process prototype"
	self newProcessPrototype: 'Empty prototype'.

	"Create the simple Process prototype"
	simplePrototype := self newProcessPrototype: 'Simple prototype'.
	simplePrototype loadSimple.

	self loadCustomObjects.

	cobj := self newCustomObjectTypeNamed: 'Security type'.
	cobj singleObjects: { 'DEP'. 'BORGEN'. 'BANKGARANTI'. 'BLANDAT'. 'PRELSIFF'}.

	cobj2 := self newCustomObjectTypeNamed: 'Business unit'.
	cobj2 hasNil: true.
	cobj2 singleObjects: { 'FM'. 'FD'. 'FM+FD'}.

	cus := self createProcess: 'Customer' fromPrototypeNamed: 'Simple prototype'.
	sec := self createProcess: 'Security' fromPrototypeNamed: 'Simple prototype'.
	let := self createProcess: 'Letter' fromPrototypeNamed: 'Simple prototype'.

	{
		{'agullers'. 'Annika'. 'Gullers'. 'annika.gullers@fortum.com'. false}.
		{'pnilsson'. 'Peter'. 'Nilsson'. 'peter.l.nilsson@fortum.com'. false}.
	} do: [:arr | | u |
		u := self newUser: arr first.
		u person email: arr fourth; firstName: arr second lastName: arr third.
		arr fifth ifTrue: [u reporterOnly: true].
		cus addUser: u.
		sec addUser: u.
		let addUser: u].
	
	cus loadDemo3Customer.
	let loadDemo3Letter.
	sec loadDemo3Security.