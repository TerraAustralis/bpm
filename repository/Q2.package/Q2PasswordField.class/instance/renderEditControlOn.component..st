rendering
renderEditControlOn: h component: fieldComponent
	
	| input confirm |
	"Hackish, but it works. If ldapId is not nil then LDAP is used for the password."
	fieldComponent model target ldapId ifNotNil: [
		h render: '<managed centrally for this user>'.
		^self].

	input := h passwordInput.
	h key ifNotNil: [input id: h key].
	input class: cssClass.
	maxLength ifNotNilDo: [ :num | input maxLength: num ].
	input callback: [ :pw | pw isEmptyOrNil ifFalse: [fieldComponent setCache: pw ]].

	h space; text: '...and confirm:'; space.
	confirm := h passwordInput.
	maxLength ifNotNilDo: [ :num | confirm maxLength: num ].
	confirm class: cssClass;
		callback: [ :pw2 | pw2 isEmptyOrNil ifFalse: [ self cacheConfirmation: pw2 component: fieldComponent ]].