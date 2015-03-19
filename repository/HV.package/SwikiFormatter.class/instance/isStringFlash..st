private
isStringFlash: anUpperCasedString
	"check the string to see if it is a flash file."
	^anUpperCasedString endsWith: '.SWF'