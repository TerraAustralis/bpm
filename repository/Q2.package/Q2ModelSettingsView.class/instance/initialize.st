as yet unclassified
initialize
	| val |
	super initialize.
	label := 'Global settings'.
	description := 'Lets you review and change global settings'.

	val := Q2MultiFormValue new.

	editor := Q2MultiFormEditor parent: self.
	editor addDefaultButtonsFor: self.

	self model modelSettingsDo: [ :setting | | form |
		form := Q2Form new label: setting name.
		setting fillForm: form.
		val add: (form newBufferFor: setting).
	].
	editor edit: val.