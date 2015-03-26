initialize-release
initializePrototype
  "Hardcoded minimal setup with a 'disabled' default permission object."

  createCaseForm := self model defaultCreateCaseForm veryDeepCopy.
  self addTableCaseForm: (self importForm: model defaultTableCaseForm).
  modifyCaseForm := createCaseForm editForm.
  self
    addForm: createCaseForm;
    addForm: modifyCaseForm.
  self
    addExportForm:
      (Q2ExportForm form: createCaseForm selector: Q2ReportSourceCases).
  self
    addRole: (ownerRole := Q2Owner new);
    addRole: (reporterRole := Q2Reporter new);
    addRole: (responsibleRole := Q2Responsible new);
    addRole: (alertedRole := Q2Alerted new);
    addRole: (assignedRole := Q2Assigned new);
    addRole: (interestedRole := Q2Interested new);
    addRole: (sourceRole := Q2Source new).
  self
    addLinkType: (Q2RelatedLink named: 'Is related to:');
    addLinkType: (sameAsLink := Q2DuplicateOfLink named: 'Has duplicate:');
    addLinkType: (parentOfLink := Q2ParentOfLink named: 'Has child:').
  sameAsLink reverseName: 'Is duplicate of:'.
  parentOfLink reverseName: 'Has parent:'.
  self flag: #'q2todo'.	"see non implemented below"
  self
    settingAt: #'allowNobodyResponsible' put: true;
    settingAt: #'allowNobodyResponsibleSeconds' put: 24 * 3600;
    settingAt: #'allowSettingResponsiblityToNobody' put: false;
    settingAt: #'allowGivingResponsibility' put: true;
    settingAt: #'allowOfferingResponsibility' put: true;
    settingAt: #'allowRequestingResponsibility' put: true;
    settingAt: #'onlyResponsibleCanMove' put: false;
    settingAt: #'onlyResponsibleCanClose' put: false;
    settingAt: #'allowMovingToStageWithoutWritePermission' put: true;
    settingAt: #'allowEditOnStageWithoutWritePermission' put: false;
    settingAt: #'allowAddSelfInterestedWithoutWritePermission' put: true;
    settingAt: #'confirmCasesCreatedByEmail' put: true;
    settingAt: #'useNosyList' put: false;
    settingAt: #'confirmCasesCreatedByReporters' put: true;
    settingAt: #'confirmCasesCreated' put: false.	"does not affect the ensure service"	"0 = indefinitely"	"not implemented"	"not implemented"	"not implemented"	"not implemented"	"not implemented but used for testing"	"covers web too, but only by reporters"	"covers web too, all users"
  self importUser: self nobodyUser.
  (self model findCategoryNamed: 'System user')
    ifNotNilDo: [ :systemUserCat | 
      self importCategories: {systemUserCat}.
      self
        importUsers:
          (self model users select: [ :each | each hasCategory: systemUserCat ]) ].
  (self newPermissionNamed: 'Default permission')
    setDefaultAccess: Q2Permission read	"	(self newPermissionNamed: 'Default permission')
		setWriteFor: (self categoryNamed: 'Public forms');
		setDefaultAccess: Q2Permission read
"