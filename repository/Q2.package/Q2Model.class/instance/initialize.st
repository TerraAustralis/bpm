initialize-release
initialize
  "Overrides super initialize because we need a larger
	collection for transactions since we track all of them."

  administrators := OrderedCollection new.
  processes := OrderedCollection new.
  mirrors := OrderedCollection new.
  processPrototypes := OrderedCollection new.
  caseCounter := Q2Platform current newCounter.
  definedCategories := OrderedCollection new.
  customObjectTypes := OrderedCollection new.
  forms := OrderedCollection new.
  notificationsTable := Q2NotificationTable new.
  modelSettings := Dictionary new.
  self initializePersonsCollection.
  self initializeUsersCollection.
  self initializeObjectsCollection.
  self initializeTransactionsCollection.
  self initializeCasesCollection.
  self initializeAlarmsCollection.	"Clear out external directories used for attachments etc."
  self deleteDirectories.	"Tell the system where it is"
  Q2TimeZone setDynamicTransform: 'Australia/Sydney'