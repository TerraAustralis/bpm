sample
loadSampleData
	"Load the model with some more sample objects used for testing."

	| p1 p2 pr1 pr2 m tester p3 testReceiver testSender writerUsers readerUsers testUsers sub mimer oden tor balder |
	self loadSimple.
	self loadCustomObjects.
	mimer := users detect: [:u | u name = '_mimer']. "hack since we haven't committed yet"
	tor := users detect: [:u | u name = '_tor'].
	oden := self newUser: '_oden'.
	oden person email: 'oden@valhall.org'; firstName: 'Oden' lastName: 'Wise'.
	tester := self newUser: '_frigg'. 
	tester settings timeZone: 'Asia/Tokyo'.
	tester person email: 'tester@valhall.org'; firstName: 'Frigg' lastName: 'Wise'.
	balder := self newUser: '_balder'.
	balder person email: 'balder@valhall.org'; firstName: 'Balder' lastName: 'Beautiful'.

	testReceiver := self newUser: '_frej'.
	testReceiver person email: 'receiver@testdomain.com'; firstName: 'Frej' lastName: 'Fruitful'.
	testSender := self newUser: '_freja'.
	testSender person email: 'sender@testdomain.com'; firstName: 'Freja' lastName: 'Fruitful'.
	
	writerUsers := self categoryNamed: 'Users with write permission'.
	{ mimer. oden. balder. testReceiver. testSender } do: [:each | each addCategory: writerUsers].
	
	readerUsers := self categoryNamed: 'Users with read permission'.
	tor addCategory: readerUsers.
	
	testUsers := self categoryNamed: 'A "real" test set up?'.
	tester addCategory: testUsers.
	
	self categoryNamed: 'Public forms'.	"Forms that anyone can read and write."
	self categoryNamed: 'Secret forms'.	"Some forms should not be visible for all"
	self categoryNamed: 'Cases and Notes'.
	
	pr1 := self newProcessPrototype: 'Support prototype'.
	pr1 loadSupport.
	pr2 := self newProcessPrototype: 'Development prototype'.
	pr2 loadDevelopment.

	p1 := self addProcess: (pr1 copyPrototype name: 'Support').
	p2 := self addProcess: (pr2 copyPrototype name: 'Development').
	p3 := self findProcessNamed: 'Simple'.

	p1 importForms: (forms last: 1).
	p2 importForms: (forms last: 1).

	mimer addProcess: p1; addProcess: p2.
	oden addProcess: p1; addProcess: p2; addProcess: p3.
	balder addProcess: p1; addProcess: p2; addProcess: p3.
	tester addProcess: p1; addProcess: p2; addProcess: p3.
	p3 importUsers: {testSender}.

	"Assign admins"
	p1 addAdministrator: mimer.
	p2 addAdministrator: mimer.
	p2 addAdministrator: balder.

	"One personal mirror of the support and simple process"
	m := Q2PersonalMirrorDefinition new.
	m owner: oden; prefix: oden username.
	self addMirrorDefinition: m.

	"One personal mirror of the simple process"
	m := Q2PersonalMirrorDefinition new.
	m owner: tor; prefix: tor username.
	self addMirrorDefinition: m.

	"Set up subscriptions"
	balder settings digestSubscriptions: true; digestTime: 1; digestNextSend: 0.
	sub := Q2UserSubscription named: 'Balder case subscription'.
	sub user: balder.
	sub addEvent: Q2ModifiedCaseEvent.
	sub addEvent: Q2ModifiedCaseResponsibleEvent.
	sub overrideDigest: true.
	sub := Q2UserSubscription named: 'Balder case subscription (2)'.
	sub user: balder.
	sub addProcess: p1.
	sub addEvent: Q2StageTransitionEvent