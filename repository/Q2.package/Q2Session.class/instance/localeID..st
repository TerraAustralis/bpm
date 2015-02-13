translation
localeID: anIsoLanguageOrLocaleId
	"I set the localeID. if my parameter references a Q2LocalID instance then i just store it.
     If it is a string I get a Q2LocaleID instance for it."
	(anIsoLanguageOrLocaleId isKindOf: Q2LocaleID)
		ifTrue: [^localeId := anIsoLanguageOrLocaleId].
	(anIsoLanguageOrLocaleId isString)
		ifTrue: [^localeId := Q2LocaleID isoLanguage: anIsoLanguageOrLocaleId].
	self error: 'Wrong parameter for setting the locale.'