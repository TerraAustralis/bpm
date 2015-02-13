methods
initializeWithSettings: settings locationInitBlock: aMagmaLocationBlock
  "Using a block aMagmaLocationBlock, which must be lazily evaluated after registering application with seaside"

  | app |
  app := WAAdmin register: self asApplicationAt: settings systemName.
  app configuration addParent: WAEmailConfiguration instance.
  app preferenceAt: #'smtpServer' put: settings smtpServer.
  app preferenceAt: #'smtpUsername' put: 'jupiter'.
  app preferenceAt: #'smtpPassword' put: 'c0nf0und'.
  app preferenceAt: #'rootClass' put: settings rootComponentClass.
  app preferenceAt: #'sessionClass' put: settings sessionClass.
  app
    addLibrary: Q2DefaultResources;
    addLibrary: WANavigationFiles;
    addLibrary: PTDevelopmentLibrary;
    addLibrary: SUDevelopmentLibrary.	"addLibrary: settings resourcesLibraryClass;"	"removeLibrary: WAStandardFiles;"
  aMagmaLocationBlock
    ifNotNil: [ 
      | config |
      config := Smalltalk at: #'WAMagmaConfiguration'.
      config ifNotNil: [ app configuration addAncestor: config new ] ].
  app configuration addParent: Q2GjallarConfiguration instance.	"app configuration valueAt: #exceptionHandler put: (Q2Platform seasideErrorHandlerClass)."
  aMagmaLocationBlock
    ifNotNil: [ app preferenceAt: #'location' put: aMagmaLocationBlock value ]