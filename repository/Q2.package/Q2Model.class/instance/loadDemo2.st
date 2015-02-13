sample
loadDemo2
	"Load the model with the demo processes. This is for Qurius."

	| sup simplePrototype root madde patrik sven magnus erik cobj cobj2 |

	root := users detect: [:u | u name = 'root'].
	root password: 'goldstar07'.

	"Create the empty Process prototype"
	self newProcessPrototype: 'Empty prototype'.

	"Create the simple Process prototype"
	simplePrototype := self newProcessPrototype: 'Simple prototype'.
	simplePrototype loadSimple.

	self loadCustomObjects.
	cobj := self newCustomObjectTypeNamed: 'Products'.
	cobj hasNil: true.
	cobj singleObjects: { 'Axapta'. 'Scala'}.

	cobj2 := self newCustomObjectTypeNamed: 'Customers'.
	cobj2 hasNil: true.
	cobj2 singleObjects: { 'Accor'. 'Ascom'. 'Bulls'.  'Dafo Brand'. 'Elga'. 'Ericsson'. 'Kemetyl'. 'Mabtech'. 'Raisio'. 'Runex'. 'Sandrew Metronome'.'Sensistor Technologies'.'Specialfastigheter'. 'Visit Sweden'. 'Visma' } sort.

	sup := self createProcess: 'Support' fromPrototypeNamed: 'Simple prototype'.
"	dev := self createProcess: 'Development' fromPrototypeNamed: 'Simple prototype'."

	madde := self newUser: 'mkrampe'.
	madde person email: 'mkrampe@watermark.eu'; firstName: 'MadelÃ©ine' lastName: 'Krampe'.
	patrik := self newUser: 'pherlin'.
	patrik person email: 'pherlin@watermark.eu'; firstName: 'Patrik' lastName: 'Herlin'.
	sven := self newUser: 'snoren'.
	sven person email: 'snoren@watermark.eu'; firstName: 'Sven-Olav' lastName: 'NorÃ©n'.
	magnus := self newUser: 'meriksson'.
	magnus person email: 'meriksson@watermark.eu'; firstName: 'Magnus' lastName: 'Eriksson'.
	erik := self newUser: 'eruckertz'.
	erik person email: 'eruckertz@watermark.eu'; firstName: 'Erik' lastName: 'Ruckertz'.
	sup addUser: madde; addUser: patrik;  addUser: sven; addUser: magnus; addUser: erik.

	{
		{'astenholm'. 'Agneta'. 'Stenholm'. 'astenholm@watermark.eu'. false}.
		{'aelmen'. 'Anders'. 'ElmÃ©n'. 'aelmen@watermark.eu'. false}.
		{'asward'. 'Anders'. 'Swärd'. 'asward@watermark.eu'. false}.
		{'awiklund'. 'Anders'. 'Wiklund'. 'awiklund@watermark.eu'. false}.
		{'cwadman'. 'Carina'. 'Wadman'. 'cwadman@watermark.eu'. false}.
		{'cwenngren'. 'Catharina'. 'Wenngren'. 'cwenngren@watermark.eu'. false}.
		{'dhagglov'. 'Dan'. 'Hägglöv'. 'dhagglov@watermark.eu'. false}.
		{'ffalkewall'. 'Fredrik'. 'Falkewall'. 'ffalkewall@watermark.eu'. false}.
		{'ijohansson'. 'Ida'. 'Johansson'. 'ida.johansson@ibitec.se'. false}.
		{'jsvensson'. 'Joakim'. 'Svensson'. 'jsvensson@watermark.eu'. false}.
		{'jhansen'. 'Johan'. 'HansÃ©n'. 'johan.hansen@ascom.se'. true}.
		{'lwesteren'. 'Liselotte'. 'WesterÃ©n'. 'lwesteren@watermark.eu'. false}.
		{'mrastas'. 'Maria'. 'Rastas'. ''. false}.
		{'pmartin'. 'Patrik'. 'MartÃ­n'. 'pmartin@watermark.eu'. false}.
		{'rtilly'. 'Ragnhild'. 'Tilly'. 'rtilly@watermark.eu'. false}.
		{'rhasselblad'. 'Rikard'. 'Hasselblad'. 'rhasselblad@watermark.eu'. false}.
		{'atornroth'. 'Åsa'. 'Tornroth'. ''. true}.
	} do: [:arr | | u |
		u := self newUser: arr first.
		u person email: arr fourth; firstName: arr second lastName: arr third.
		arr fifth ifTrue: [u reporterOnly: true].
		sup addUser: u].
	
	"Elga"
"	astrid := self newUser: 'aodegaard'.
	astrid person email: 'aodegaard@krampe.se'; firstName: 'Astrid' lastName: 'Ãdegaard'.
	astrid reporterOnly: true.
	sup addUser: astrid.
"
	"Visma"
"	inga := self newUser: 'iaatolainen'.
	inga person email: 'iaatolainen@krampe.se'; firstName: 'Inga' lastName: 'Aatolainen'.
	inga reporterOnly: true.
	sup addUser: inga.
"
	sup loadDemoSoftwareSupport2.
"	dev loadDemoSoftwareDevelopment2."