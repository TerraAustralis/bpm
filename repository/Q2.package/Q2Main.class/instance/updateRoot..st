rendering
updateRoot: anHtmlRoot
  | css sublabel |
  super updateRoot: anHtmlRoot.	"KPH TESTING 

KPH ASKS - why is this not in the main stylesheet?

I have attempted to avoid extra requests for these two style snippets, hopefully they should be included inline.
As an experiment I have used an alternative to the underscore hack for the position bug. I am not convinced that it worked, however in allowing the left panel to scroll I can access items that before I could not reach.

I have used the underscore hack for the rest.
I dont know if it works since I dont have Win IE to test with.
If you dont like this then feel free not to merge it "	" A fix for position: fixed issue with IE/Mozilla.
IE 6 understands the first line but not the second other browsers should understand the second line"
  css := 'div#left { position: absolute; }
	/*body > div#left { position: fixed; }*/
 
	html {
    _overflow: hidden;
	}
	body {
    		_height: 100%;
    		_width: 100%;
    		_overflow: auto;
	}
'.	"anHtmlRoot addStyle: css."	"Enable below if you want login from cookie."	"self isLoggedIn
		ifFalse: [
			self session loginFromCookie.
			self isLoggedIn ifTrue: [left loggedInNavigation]]."	"Make sure we show the selected component"
  left selection ifNil: [ left selectDefault ].
  content := left selection.
  label := self settings systemName.
  sublabel := content label.
  sublabel ifNotNil: [ label := label , ': ' , sublabel ].
  anHtmlRoot title: label.	"anHtmlRoot link
    url: Q2DefaultResources / 'favicon.ico';
    beShortcutIcon"
  anHtmlRoot link
    relationship: 'icon';
    type: WAMimeType imagePng;
    url: NRPresentationFileLibrary / #'assetsimagesnextRoundLogoMiniPng'