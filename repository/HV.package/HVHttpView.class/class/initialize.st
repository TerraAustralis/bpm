class initialization
initialize
  "HVHttpView initialize"

  HtmlEntities := (Dictionary new: 128)
    at: 'amp' put: $&;
    at: 'lt' put: $<;
    at: 'gt' put: $>;
    at: 'quot' put: $";
    yourself.
  SafeChars _ Set new.
  '1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ/-_()".,''@?!:; '
    , 'ï»¿Ã¥Ã¤Ã¶ÃÃÃÃ©Ã¼Ã¨Ã¡ÃªÃ´Ã¢' do: [ :c | SafeChars add: c ].
  UltraSafeChars := SafeChars copy.
  UltraSafeChars
    remove: $/;
    remove: $.	"#('nbsp' 'iexcl' 'cent' 'pound' 'curren' 'yen' 'brvbar' 'sect' 'uml' 'copy' 'ordf' 'laquo' 'not' 'shy' 'reg' 'hibar' 'deg' 'plusmn' 'sup2' 'sup3' 'acute' 'micro' 'para' 'middot' 'cedil' 'sup1' 'ordm' 'raquo' 'frac14' 'frac12' 'frac34' 'iquest' 'Agrave' 'Aacute' 'Acirc' 'Atilde' 'Auml' 'Aring' 'AElig' 'Ccedil' 'Egrave' 'Eacute' 'Ecirc' 'Euml' 'Igrave' 'Iacute' 'Icirc' 'Iuml' 'ETH' 'Ntilde' 'Ograve' 'Oacute' 'Ocirc' 'Otilde' 'Ouml' 'times' 'Oslash' 'Ugrave' 'Uacute' 'Ucirc' 'Uuml' 'Yacute' 'THORN' 'szlig' 'agrave' 'aacute' 'acirc' 'atilde' 'auml' 'aring' 'aelig' 'ccedil' 'egrave' 'eacute' 'ecirc' 'euml' 'igrave' 'iacute' 'icirc' 'iuml' 'eth' 'ntilde' 'ograve' 'oacute' 'ocirc' 'otilde' 'ouml' 'divide' 'oslash' 'ugrave' 'uacute' 'ucirc' 'uuml' 'yacute' 'thorn' 'yuml' ) withIndexDo: [:each :index | HtmlEntities at: each put: (index + 159) asCharacter isoToSqueak]"