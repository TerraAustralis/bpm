sample
loadNextroundDefaults
  workflow loadSimple.
  self importUsers: model users.	"	casePrototype := self newCase."	"	self addPopAccount: 'someuser' password: 'somepassword' server: 'apop3server'."	"	self addPopReceiver: 'simple@valhall.org' casePrototype: casePrototype."
  self importCategories: self model definedCategories.
  self loadNextroundPermissions