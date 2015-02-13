methods
cleanImage
  "Sledgehammer to get everything cleaned up, initialized, processes killed etc.
	Good to run before taking a snapshot of the image or before starting Gjallar etc."

  Q2Platform abortTransaction.
  System transactionMode: #'manualBegin'.
  Q2Platform beginTransaction.
  Q2Log initializeClass.
  Q2Object initialize.	"Clearreferences to any externally defined resources, i.e. those which override the defaults"
  Q2Resources clear.	"clear our in memory cache of the ini file(s)"
  Q2GjallarSettings clear.	"Load our in image gifs and other docs"	"WACachedDocument clearCache."	"WACachedDocument fileName: (Q2Object setting: #logo).
	WACachedDocument preloadCache."	"Stop, clean and wipe lots of stuff"	"WAKom stop."	"EventManager clearActionMaps."
  Q2Platform commitTransaction.
  Q2Platform beginTransaction.	"WARegistry clearAllHandlers."
  WAHalo initialize.	"hehe, noticed that components end up in a class var..."	"DynamicBindings clear."	"Q2MagmaSessionPool cleanUp."	"should clear all through the pool"	"SoapServerSetup stopAll."	"SoapServiceHandler initialize."	"clears class side handlerDict"
  Q2Scheduler stop.
  Q2Platform commitTransaction.
  Q2Platform beginTransaction.
  Q2Session cleanUp.	"releases all magmaSessions, 
					and cleans up ProcessLocalVariable refs ro current sessions"	"Shutting down magma server"	"MagmaServerConsole allInstancesDo: [:each | each shutdown ]."
  Q2SessionWithoutMagma cleanUp.	"removes any in memory DB"
  Q2Service releaseAllSessions.	"persistent sessions in some services"	"Q2MirrorServer stop."
  Q2Plugin stop.	"Stop all plugins"
  Smalltalk garbageCollect.	"Initialize stuff"
  Q2User initialize.
  Q2Person initialize.
  Q2UserSettings initialize.
  Q2Case initialize.
  Q2Platform commitTransaction	"Sanity checks of image"	"MagmaSession allInstances ifNotEmpty: [self error: 'Magma sessions hanging! Consider #ultraCleanImage']."	"Q2Model allInstances
    ifNotEmpty: [ self error: 'Q2Model instances hanging! Consider #ultraCleanImage' ].
  Q2Session allInstances
    ifNotEmpty: [ self error: 'Q2Session instances hanging! Consider #ultraCleanImage' ].
  Q2Process allInstances
    ifNotEmpty: [ self error: 'Q2Process instances hanging! Consider #ultraCleanImage' ].
  Q2User allInstances
    ifNotEmpty: [ self error: 'Q2User instances hanging! Consider #ultraCleanImage' ].
  Q2ImportedObjectWrapper allInstances
    ifNotEmpty: [ 
      self
        error:
          'Q2ImportedObjectWrapper instances hanging! Consider #ultraCleanImage' ]"