instance creation
buildReadStrategyAggressiveOn: strategy
 
"Very highly aggressive read everything unless it is gated.

This analogy uses the idea of attempting to collect information from a guarded space, 
perhaps a normal KEEP describes the scene. (OT: What a cool name for a database!)

Essentially this is how it works, whatever you can see you can have.

BIG GATES (typically -20)
Stop everything except what is explicitly visible through a KEYHOLE
- MagmaCollections are natural gates, 
- MagmaCollection's query mechanism is the little 'porter window' where you ask for service. 
- e.g. In GJallar Q2Model has a BIG GATE to gate most things
- When the GATE is defined for the whole class (on all attributes) it applies to 
  subclasses also including extra attributes the subclass may define.

KEYHOLE (typically 0)
- allows any reasonably agressive (+ve) read strategy to pass through the BIG/SMALL GATE.
- will loose one in 'range'.
BIG KEYHOLE (typically 1)
- allows any read strategy that gets this far to pass through to the next level without cost.

OPEN ACCESS (typically 99)
- Everything inside the area/object is visible.
- Setting objects for OPEN ACCESS is not relevant when OPEN ACCESS is the default behaviour.
  These items may be left marked as such to indicate intent and to facilitate future variations.

SMALL GATE - Non-Solid See Through (typically -10)
- Most attributes are not visible unless made ACQUIRABLE meaning explicitly placed in the line
 of sight by their owner for easy 'target aquisition'.
- In Gjallar domain objects are gated with a SMALL GATE (e.g. Q2Process Q2Case)

ACQUIRABLE - (typically 15)
- Contents of default index like attributes are set to be visible through small gates whatever they are.
	- i.e.  id, name, description

BLOCKADED (typically -20000)
- Some specific object attributes are never retrieved unless explicitly requested.
Precedence is such that BLOCKADED objects, if accidentally, placed in an OPEN ACCESS space
or in line of sight are still protected, where as lesser barriers are not.
 
     - i.e. In Gjallar the wikiPage content is only ever needed when explicitly requested

ALARMED (typically -999999)
-  Access to this object will raise an error in the Log. Use this if you want to be informed 
when this object is used. (This is the equivalent of a self halt!)
	
RECONNAISANCE
------------------
GLANCING - minimumDepth 1 - top level OPEN ACCESS, KEYHOLES, and their ACQUIRABLES only
LOOKING - minimumDepth 5 - to view any OPEN ACCESS, even through KEYHOLES, and ACQUIRABLES
SMALL KEY - minimumDepth 15 - to retrieve anything behind one SMALL GATE
BIG KEY - minimumDepth 25 - to retrive anything behind one BIG GATE

"

 "	strategy minimumDepth: 5. "

	"big first read"  "not needed due to high min depth" 
	"strategy onAny: Q2RepositoryRoot readToDepth: 5"

	"the main BIG GATE"
	strategy	 onAny: Q2Model readToDepth: -20.

	"tiny KEY HOLES"
	strategy forVariableNamed: 'caseCounter' onAny: Q2Model readToDepth: 2.
	strategy forVariableNamed: 'useIndexing' onAny: Q2Model readToDepth: 99.
	

"ProtoObject  - "
"  Object  - "
"    Q2Object  - "
"      Q2CasePanel  -  filter tableCaseForm numberOfCases name description"
"      Q2CodeHolder  -  code selection result error"
"      Q2CustomObjectLoader  - "
"        Q2CustomObjectFileLoader  -  fileName separator"
"        Q2CustomObjectODBCLoader  -  dsn user password query"
"      Q2Event  - "
"        Q2CaseEvent  -  case"
"          Q2CreatedCaseEvent case  - "
"          Q2ModifiedCaseAssignedToMeEvent case  -  assigned"
"          Q2ModifiedCaseEvent case  - "
"          Q2ModifiedCaseResponsibleEvent case  -  newResponsible"
"            Q2ModifiedCaseResponsibleToMeEvent case newResponsible  - "
"          Q2ModifiedCaseRolesEvent case  - "
"          Q2ModifiedRelatedCaseEvent case  - "
"          Q2NoteAddedEvent case  - "
"          Q2StageTransitionEvent case  -  newStage"
"            Q2StageTransitionForRelatedCaseEvent case newStage  - "
"        Q2UserEvent  -  user"
"          Q2UserAddedEvent user  - "
"      Q2File  -  fileName content"
	strategy onAny: Q2File readToDepth: -20000. "BLOCKADE"
	strategy forVariableNamed: 'fileName' onAny: Q2File readToDepth: 2. "ACQUIRABLE"

"      Q2FilterOperator  -  selector label"
"        Q2FilterOperatorReversed selector label  - "
"      Q2FilterPredicate  -  operator value rank filter"
"        Q2FilterFieldPredicate operator value rank filter  -  field"
"        Q2FilterProcessPredicate operator value rank filter  - "
"        Q2FilterResponsiblePredicate operator value rank filter  - "
"        Q2FilterSelectorPredicate operator value rank filter  -  selector description label values operators multi"
"        Q2FilterStagePredicate operator value rank filter  - "
"        Q2FilterStatusPredicate operator value rank filter  - "
"      Q2FilterStack  -  filters compiledBlock values lastValues filtersChanged useQueries freetext freetextIds"

 	strategy onAny: Q2FilterStack readToDepth: 99. "OPEN ACCESS"
 
"      Q2FormBuffer  -  value target targetSelector originalValues form"
"      Q2LDAP  - "
"      Q2MailSender  - "
"      Q2MirrorCreator  -  mirrorDefinition objectMap shouldNotVisit shouldNotCopy"
"      Q2Model  -  users persons administrators processes mirrors cases caseCounter prefix processPrototypes defaultModifyCaseForm defaultCreateCaseForm defaultTableCaseForm transactions mirrorTransactions mirror definedCategories forms customObjectTypes linkTypes roles globalDefinition useIndexing objects notificationsTable serviceQueues plugInRegistry"
"      Q2MultiFormValue  -  formValues"
"      Q2Notebook  -  notes"
"      Q2Notification  -  subscription events"
"      Q2NotificationRun  -  events"
"      Q2NotificationTable  -  pendingNotifications"
"      Q2PluginRegistry  -  plugins owner"
"      Q2PopAccount  -  username password server blacklistedSenders"
"      Q2PopMailService  - "
"      Q2PopReceiver  -  email replyToEmail casePrototype"
"      Q2Report  -  fileName filter reportDefinition creationTime user generatedReport"
"      Q2ReportSource  - "
"        Q2ReportSourceCases  - "
"        Q2ReportSourcePermissions  - "
"        Q2ReportSourceUsers  - "
"      Q2Scheduler  - "
"      Q2Script  -  compiledBlock source header"
"      Q2Service  - "
"        Q2CacheService  - "
"        Q2CustomObjectSyncService  - "
"        Q2EnsureResponsibleService  - "
"        Q2InifileLoadService  - "
"        Q2LdapUserUpdateService  - "
"        Q2MagmaBackupService  - "
"        Q2MigrationService  - "
"          Q2MantisMigrationService  - "
"        Q2NotificationDigestService  - "
"        Q2PopService  - "
"        Q2QueueHandlerService  - "
"          Q2NotificationRunService  - "
"          Q2NotificationSenderService  - "
"      Q2Statistics  -  statValues statNames period startDate endDate caseCategories processes processesStats newCase openCase closedCase"
"      Q2TransitionDenial  -  transition criterion msg"
"      Q2Txn  -  id number user timestampCreated timestampApplied objects transactions parentTxn"
		strategy onAny: Q2Txn readToDepth: -10.
		strategy forVariablesNamed: 'id number user timestampCreated timestampApplied' onAny: Q2Txn readToDepth: 0.
		strategy forVariablesNamed: 'objects transactions' onAny: Q2Txn readToDepth: -20000.
"        Q2BootStrapTxn id number user timestampCreated timestampApplied objects transactions parentTxn  - "
"        Q2CaseTxn id number user timestampCreated timestampApplied objects transactions parentTxn  -  case"
"          Q2AddAttachmentTxn id number user timestampCreated timestampApplied objects transactions parentTxn case  -  attachment"
"          Q2AddUserInRoleTxn id number user timestampCreated timestampApplied objects transactions parentTxn case  -  theUser role"
"            Q2RemoveUserInRoleTxn id number user timestampCreated timestampApplied objects transactions parentTxn case theUser role  - "
"          Q2CaseNoteTxn id number user timestampCreated timestampApplied objects transactions parentTxn case  -  note files"
"          Q2CaseTransitionTxn id number user timestampCreated timestampApplied objects transactions parentTxn case  -  transition"
"          Q2SetResponsibleTxn id number user timestampCreated timestampApplied objects transactions parentTxn case  -  responsibleUser"
"          Q2UpdateCaseFieldValueTxn id number user timestampCreated timestampApplied objects transactions parentTxn case  -  field fieldValue"
"        Q2CreateCaseTxn id number user timestampCreated timestampApplied objects transactions parentTxn  -  case files"
"        Q2FormValueTxn id number user timestampCreated timestampApplied objects transactions parentTxn  -  formValue"
"          Q2ModifyCaseTxn id number user timestampCreated timestampApplied objects transactions parentTxn formValue  -  case"
"          Q2ModifyUserTxn id number user timestampCreated timestampApplied objects transactions parentTxn formValue  - "
"            Q2CreateUserTxn id number user timestampCreated timestampApplied objects transactions parentTxn formValue  - "
"        Q2LinkTxn id number user timestampCreated timestampApplied objects transactions parentTxn  -  link"
"          Q2AddLinkTxn id number user timestampCreated timestampApplied objects transactions parentTxn link  - "
"          Q2ModifyLinkTxn id number user timestampCreated timestampApplied objects transactions parentTxn link  - "
"          Q2RemoveLinkTxn id number user timestampCreated timestampApplied objects transactions parentTxn link  - "
"        Q2ModifyGlobalDefinitionTxn id number user timestampCreated timestampApplied objects transactions parentTxn  -  definition result error"
"        Q2ModifyProcessDefinitionTxn id number user timestampCreated timestampApplied objects transactions parentTxn  -  process definition result error"
"        Q2ModifyWikiPageTxn id number user timestampCreated timestampApplied objects transactions parentTxn  -  parent source"
"        Q2NamedObjectTxn id number user timestampCreated timestampApplied objects transactions parentTxn  -  object collectionSelector"
"          Q2AddNamedObjectTxn id number user timestampCreated timestampApplied objects transactions parentTxn object collectionSelector  - "
"          Q2ModifyNamedObjectTxn id number user timestampCreated timestampApplied objects transactions parentTxn object collectionSelector  -  old"
"          Q2RemoveNamedObjectTxn id number user timestampCreated timestampApplied objects transactions parentTxn object collectionSelector  - "
"        Q2PluginTxn id number user timestampCreated timestampApplied objects transactions parentTxn  -  plugin registryOwner"
"          Q2AddPluginTxn id number user timestampCreated timestampApplied objects transactions parentTxn plugin registryOwner  - "
"          Q2ProcessPluginTxn id number user timestampCreated timestampApplied objects transactions parentTxn plugin registryOwner  -  process"
"            Q2AddProcessPluginTxn id number user timestampCreated timestampApplied objects transactions parentTxn plugin registryOwner process  - "
"          Q2RemovePluginTxn id number user timestampCreated timestampApplied objects transactions parentTxn plugin registryOwner  - "
"          Q2SavePluginTxn id number user timestampCreated timestampApplied objects transactions parentTxn plugin registryOwner  -  formBuffer"
"        Q2ProcessTxn id number user timestampCreated timestampApplied objects transactions parentTxn  -  process"
"          Q2ProcessAndUsersTxn id number user timestampCreated timestampApplied objects transactions parentTxn process  -  users"
"            Q2AddAccessTxn id number user timestampCreated timestampApplied objects transactions parentTxn process users  - "
"            Q2AddAdministratorsTxn id number user timestampCreated timestampApplied objects transactions parentTxn process users  - "
"            Q2RemoveAccessTxn id number user timestampCreated timestampApplied objects transactions parentTxn process users  - "
"            Q2RemoveAdministratorsTxn id number user timestampCreated timestampApplied objects transactions parentTxn process users  - "
"        Q2UserTxn id number user timestampCreated timestampApplied objects transactions parentTxn  -  theUser"
"          Q2DeactivateUserTxn id number user timestampCreated timestampApplied objects transactions parentTxn theUser  - "
"            Q2ActivateUserTxn id number user timestampCreated timestampApplied objects transactions parentTxn theUser  - "
"          Q2FilterTxn id number user timestampCreated timestampApplied objects transactions parentTxn theUser  -  filter"
"            Q2AddFilterTxn id number user timestampCreated timestampApplied objects transactions parentTxn theUser filter  - "
"            Q2ModifyFilterTxn id number user timestampCreated timestampApplied objects transactions parentTxn theUser filter  - "
"            Q2RemoveFilterTxn id number user timestampCreated timestampApplied objects transactions parentTxn theUser filter  - "
"          Q2ModifyUserCentralTxn id number user timestampCreated timestampApplied objects transactions parentTxn theUser  -  userCentral"

"      Q2UniqueObject  -  id"
	strategy onAny: Q2UniqueObject readToDepth: 0. 
	strategy forVariableNamed: 'id' onAny: Q2UniqueObject readToDepth: 15. "ACQUIRABLE"

"        Q2Attachment id  -  originalFileName localFileName case deleted"
"        Q2CategorizableObject id  -  categories"
	strategy forVariableNamed: 'categories' onAny: Q2CategorizableObject readToDepth: -999999. "ALARMED"
	"I DO NOT KNOW WHAT THIS OBJECT IS FOR YET SO IT IS ALARMED - i.e. easy to spot in logs"

"          Q2Case id categories  -  name subject description stage notebook forms fieldValues links attachments reporter responsible source roles origin transactions"
	(strategy  onAny: Q2Case) readMyVarsToDepth: -10.	"SMALL GATE"
 	strategy forVariablesNamed: 'name subject stage reporter responsible' onAny: Q2Case readToDepth: 1. "KEY HOLE"
	strategy forVariableNamed: 'transactions' onAny: Q2Case readToDepth: 1. "KEY HOLE"

	"Q2TransactionCollection" 
	 	"I am typically in a accessible slot in Q2Case we still want to hold
	back our array from casual passers by just collating the times and array stats"
	strategy forVariableNamed: 'array' onAny: Q2TransactionCollection readToDepth: -20000. "BLOCKADE"	

"          Q2Link id categories  -  from to type"

"          Q2NamedObject id categories  -  name description wikiPage"
	(strategy  onAny: Q2NamedObject) readMyVarsToDepth: -10.
 	strategy forVariableNamed: 'wikiPage' onAny: Q2NamedObject readToDepth: -20000. "BLOCKADE"
	strategy forVariableNamed: 'name' onAny: Q2NamedObject readToDepth: 15. "ACQUIRABLE"
	strategy forVariableNamed: 'description' onAny: Q2NamedObject readToDepth: 15. "ACQUIRABLE"

"            Q2Category id categories name description wikiPage  - "

		(strategy  onAny: Q2Category) readMyVarsToDepth: -10.	"SMALL GATE"

"            Q2CustomObjectType id categories name description wikiPage  -  fields objects loader lastLoad loadInterval hasNil"
"              Q2LargeCustomObjectType id categories name description wikiPage fields objects loader lastLoad loadInterval hasNil  - "
"            Q2ExportForm id categories name description wikiPage  -  selector form"
"            Q2Field id categories name description wikiPage  -  label cssClass readOnly selector defaultValue nilForDefault"
"              Q2AttachmentsField id categories name description wikiPage label cssClass readOnly selector defaultValue nilForDefault  - "
"              Q2BooleanField id categories name description wikiPage label cssClass readOnly selector defaultValue nilForDefault  -  trueString falseString"
"              Q2CollectionField id categories name description wikiPage label cssClass readOnly selector defaultValue nilForDefault  -  form selectionList"
"              Q2FieldListField id categories name description wikiPage label cssClass readOnly selector defaultValue nilForDefault  -  field"
"                Q2FieldDictionaryField id categories name description wikiPage label cssClass readOnly selector defaultValue nilForDefault field  - "
"              Q2FormField id categories name description wikiPage label cssClass readOnly selector defaultValue nilForDefault  -  form"
"              Q2LinkField id categories name description wikiPage label cssClass readOnly selector defaultValue nilForDefault  - "
"              Q2SelectionField id categories name description wikiPage label cssClass readOnly selector defaultValue nilForDefault  -  valuesProvider nilItemString useCompletion multiple"
"                Q2AssociationField id categories name description wikiPage label cssClass readOnly selector defaultValue nilForDefault valuesProvider nilItemString useCompletion multiple  -  keysProvider useCompletionKeys nilItemStringKeys valueLabel"
"                  Q2RoleField id categories name description wikiPage label cssClass readOnly selector defaultValue nilForDefault valuesProvider nilItemString useCompletion multiple keysProvider useCompletionKeys nilItemStringKeys valueLabel  - "
"                Q2PersonSelectionField id categories name description wikiPage label cssClass readOnly selector defaultValue nilForDefault valuesProvider nilItemString useCompletion multiple  -  canAdd"
"              Q2TextField id categories name description wikiPage label cssClass readOnly selector defaultValue nilForDefault  -  multiline maxLength rows cols"
"                Q2CaseIdField id categories name description wikiPage label cssClass readOnly selector defaultValue nilForDefault multiline maxLength rows cols  - "
"                Q2DateField id categories name description wikiPage label cssClass readOnly selector defaultValue nilForDefault multiline maxLength rows cols  - "
"                Q2IntegerField id categories name description wikiPage label cssClass readOnly selector defaultValue nilForDefault multiline maxLength rows cols  - "
"                  Q2AgeField id categories name description wikiPage label cssClass readOnly selector defaultValue nilForDefault multiline maxLength rows cols  - "
"                Q2PasswordField id categories name description wikiPage label cssClass readOnly selector defaultValue nilForDefault multiline maxLength rows cols  - "
"                Q2PointInTimeField id categories name description wikiPage label cssClass readOnly selector defaultValue nilForDefault multiline maxLength rows cols  - "
"                Q2UrlTextField id categories name description wikiPage label cssClass readOnly selector defaultValue nilForDefault multiline maxLength rows cols  -  urlBlock"
"              Q2TwoStringsField id categories name description wikiPage label cssClass readOnly selector defaultValue nilForDefault  -  trueString falseString"
"            Q2Filter id categories name description wikiPage  - "
 		(strategy  onAny: Q2Filter) readMyVarsToDepth: -10.	"SMALL GATE"

"              Q2FreeTextFilter id categories name description wikiPage  -  freetext"
"              Q2QueryFilter id categories name description wikiPage  -  predicates expression"
"            Q2Form id categories name description wikiPage  -  fields label editForm"
"              Q2StaticForm id categories name description wikiPage fields label editForm  - "
"            Q2LinkType id categories name description wikiPage  -  reverseName"
"              Q2DuplicateOfLink id categories name description wikiPage reverseName  - "
"              Q2ParentOfLink id categories name description wikiPage reverseName  - "
"              Q2RelatedLink id categories name description wikiPage reverseName  - "
"            Q2Mirror id categories name description wikiPage  -  owner processes filters prefix"
"            Q2MirrorDefinition id categories name description wikiPage  -  prefix"
"              Q2PersonalMirrorDefinition id categories name description wikiPage prefix  -  owner"
"            Q2Permission id categories name description wikiPage  -  defaultLevel categoriesForClass accessLevels"
"            Q2Person id categories name description wikiPage  -  user email email2 signature lastName phone cellPhone shortPhone comment key1 key2 key3"

		
"            Q2Process id categories name description wikiPage  -  model objects definition cases workflow importedUsers importedPersons importedCategories importedCustomObjectTypes importedForms createCaseForm modifyCaseForm tableCaseForms definedCategories forms customObjectTypes linkTypes roles administrators filters popAccounts popReceivers settings permissions alertedRole assignedRole interestedRole reporterRole responsibleRole sourceRole sameAsLink parentOfLink exportForms eventTypes processSubscriptions plugInRegistry plugInSubscriptions"
			(strategy  onAny: Q2Process) readMyVarsToDepth: -10.	"SMALL GATE"
			strategy  forVariableNamed: 'model' onAny: Q2Process readToDepth: 0.	"KEY HOLE"


"            Q2ReportDefinition id categories name description wikiPage  -  selector fields filter"
"            Q2Role id categories name description wikiPage  - "
"              Q2Alerted id categories name description wikiPage  - "
"              Q2Assigned id categories name description wikiPage  - "
"              Q2Interested id categories name description wikiPage  - "
"              Q2Reporter id categories name description wikiPage  - "
"              Q2Responsible id categories name description wikiPage  - "
"              Q2Source id categories name description wikiPage  - "
"              Q2UserDefinedRole id categories name description wikiPage  -  singular"
"            Q2Subscription id categories name description wikiPage  -  filter eventClasses"
"              Q2MailSubscription id categories name description wikiPage filter eventClasses  -  overrideDigest"
"                Q2ProcessSubscription id categories name description wikiPage filter eventClasses overrideDigest  -  process"
"                Q2UserSubscription id categories name description wikiPage filter eventClasses overrideDigest  -  user processes"
"              Q2PlugInSubscription id categories name description wikiPage filter eventClasses  -  plugIn process"
"            Q2User id categories name description wikiPage  -  password processes person signature subscriptions userLists caseLists settings filters defaultFilterStack reportDefinitions userCentral canLogin ldapId"
  			(strategy  onAny: Q2User) readMyVarsToDepth: -10.
			strategy forVariablesNamed: 'password canLogin' onAny: Q2User readToDepth: 15. "AQUIRABLE"
 
"              Q2AnybodyUser id categories name description wikiPage password processes person signature subscriptions userLists caseLists settings filters defaultFilterStack reportDefinitions userCentral canLogin ldapId  - "
"              Q2FullAccessUser id categories name description wikiPage password processes person signature subscriptions userLists caseLists settings filters defaultFilterStack reportDefinitions userCentral canLogin ldapId  - "
"                Q2RootUser id categories name description wikiPage password processes person signature subscriptions userLists caseLists settings filters defaultFilterStack reportDefinitions userCentral canLogin ldapId  - "
"                Q2SystemUser id categories name description wikiPage password processes person signature subscriptions userLists caseLists settings filters defaultFilterStack reportDefinitions userCentral canLogin ldapId  - "
"              Q2NobodyUser id categories name description wikiPage password processes person signature subscriptions userLists caseLists settings filters defaultFilterStack reportDefinitions userCentral canLogin ldapId  - "
"            Q2Workflow id categories name description wikiPage  -  process stages scratchStage"
	(strategy  onAny: Q2Workflow) readMyVarsToDepth: -10.	"SMALL GATE"
	strategy  forVariablesNamed: 'process' onAny: Q2Workflow readToDepth: 1.	"BIG KEY HOLE"

"            Q2WorkflowStage id categories name description wikiPage  -  workflow isClosed isNew transitions enterCriteria exitCriteria gatekeepers allowedForms"

			(strategy  onAny: Q2WorkflowStage) readMyVarsToDepth: -10.	" GATE"
			strategy  forVariablesNamed: 'workflow isClosed isNew' onAny: Q2WorkflowStage readToDepth: 1.	"BIG KEY HOLEs"

"              Q2WorkflowScratchStage id categories name description wikiPage workflow isClosed isNew transitions enterCriteria exitCriteria gatekeepers allowedForms  - "
"            Q2WorkflowTransition id categories name description wikiPage  -  from to fromLabel toLabel criteria roles"
"          Q2Note id categories  -  parent author subject description attachments created origin case replies"
"        Q2Plugin id  -  owner subscriptions"
"          Q2GlobalPlugin id owner subscriptions  - "
"            Q2QuickJump id owner subscriptions  - "
"          Q2ProcessPlugin id owner subscriptions  - "
"            Q2CaseAddInterestedPlugin id owner subscriptions  - "
"            Q2CaseLinkingPlugin id owner subscriptions  - "
"            Q2CaseTakeResponsibilityPlugin id owner subscriptions  - "
"            Q2CaseTransitionPlugin id owner subscriptions  - "
"            Q2ExternalIssueTrackerPlugin id owner subscriptions  -  selectedProject"
"            Q2RandomMovePlugin id owner subscriptions  - "
"            Q2ScriptableButtonsPlugin id owner subscriptions  -  label text tooltip"
"            Q2SpawnAndLinkButtonsPlugin id owner subscriptions  -  label text tooltip destProcess linkType createOnly forms subjectField subjectPrefix descriptionField"
"          Q2UnitTestPlugIn id owner subscriptions  - "

"      Q2UserCentral  -  casePanels"
	"strategy onAny: Q2UserCentral readToDepth: 99."

"      Q2UserSettings  -  maxCasesInTable maxRecentCases showToolTips showIntroTexts showIntegratedHelp showNotesThreaded showEditMode showNewNotesFirst showNotesOptions showLinkedWeavingOption formatDateAndTime timeZone digestSubscriptions digestTime digestNextSend"
	strategy onAny: Q2UserSettings readToDepth: 99.

"      Q2ValidationResult  -  denials"
"        Q2TransitionValidationResult denials  -  validTransitions deniedTransitions validCriteria validTargets invalidTargets"
"      Q2WikiPage  -  source"
"      Q2WorkflowCriterion  - "
"        Q2WorkflowMandatoryCriterion  -  target"
"          Q2WorkflowMandatoryFieldCriterion target  - "
"            Q2WorkflowFieldValueCriterion target  -  value"
"          Q2WorkflowMandatoryFormCriterion target  - "
"        Q2WorkflowMultiCriterion  -  criteria" 

"MISCELLANEOUS"
strategy onAny: Q2TimeStamp readToDepth: 99.
strategy onAny: BlockContext readToDepth: 99.