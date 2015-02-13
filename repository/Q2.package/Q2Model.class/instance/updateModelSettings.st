settings
updateModelSettings
	" need to add code to remove settings of deleted classes (check for isObsolete)"
	self flag: #fix.
	Q2ModelSetting subclasses do: [ :subclass | | inst | 
		modelSettings at: subclass name ifAbsentPut: subclass new.
	].
	modelSettings do: [ :setting | setting updateDefaults ].