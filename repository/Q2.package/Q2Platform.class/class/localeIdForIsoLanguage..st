locale/translation
localeIdForIsoLanguage: langStr
	"Return an instance of LocaleID (or alike) for given iso language string (like 'en') "
	^ self current localeIdForIsoLanguage: langStr