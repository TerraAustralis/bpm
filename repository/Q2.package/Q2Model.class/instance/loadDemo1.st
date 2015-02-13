sample
loadDemo1
	"Load the model with the demo processes.
	Tor and Oden work on support. Mimer is a developer.
	Frej and Freja are field technicians for support and do not have access
	to the dev process."

	| sup dev oden tor frej freja mimer |
	self loadSampleData.
	sup := self createProcess: 'Software Support' fromPrototypeNamed: 'Simple prototype'.
	dev := self createProcess: 'Software Development' fromPrototypeNamed: 'Simple prototype'.

	sup loadDemoSoftwareSupport.
	dev loadDemoSoftwareDevelopment.

	oden := users detect: [:u | u name = '_oden']. "hack since we haven't committed yet"
	tor := users detect: [:u | u name = '_tor'].
	frej := users detect: [:u | u name = '_frej'].
	freja := users detect: [:u | u name = '_freja'].
	mimer := users detect: [:u | u name = '_mimer'].

	sup addUser: tor; addUser: oden; addUser: mimer; addUser: frej; addUser: freja.

	dev addUser: tor; addUser: oden; addUser: mimer.