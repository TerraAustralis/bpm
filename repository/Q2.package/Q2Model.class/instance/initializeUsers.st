initialize-release
initializeUsers
	"Create fundamental users."

	| systemUser anybody systemUserCat root nobody |
	systemUser := self newUser: 'system' password: nil class: Q2SystemUser.
	self addOrChangeEmailForPerson: systemUser person to: (self settings systemEmail).
	systemUser person firstName: 'SystemUser' lastName: ''.
	self session currentUser: systemUser.
	root := self newUser: 'root' password: 'goldfish' class: Q2RootUser.
	self addOrChangeEmailForPerson: root person to: ((self settings rootEmail) ifNil: ['']).
	root person firstName: 'Root' lastName: ''.
	self addAdministrator: root.
	anybody := self newUser: 'anybody' password: nil class: Q2AnybodyUser.
	anybody person firstName: 'Anybody' lastName: ''.
	nobody := self newUser: 'nobody' password: nil class: Q2NobodyUser.
	nobody person firstName: 'Nobody' lastName: ''.

	systemUserCat := self categoryNamed: 'System user'.
	systemUser addCategory: systemUserCat.
	root addCategory: systemUserCat.