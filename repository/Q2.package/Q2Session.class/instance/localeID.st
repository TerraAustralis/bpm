translation
localeID
	"I tell you which is the current locale for the session. If localeId is not yet initialized
	 I get it from the defaultLanguage setting. The default value of the defaultLanguage is 'en'."
	^localeId ifNil: [localeId := Q2Platform localeIdForIsoLanguage: (Q2Object settings at: #defaultLanguage section: #Localization)]