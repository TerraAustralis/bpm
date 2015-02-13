sample
loadDefaultPermissions
  | writerUsers readerUsers testUsers casesAndNotes publicForms secretForms permissionW permissionR permissionT systemUserPerm |
  writerUsers := self categoryNamed: 'Users with write permission'.
  readerUsers := self categoryNamed: 'Users with read permission'.
  testUsers := self categoryNamed: 'Test Setup'.
  casesAndNotes := self categoryNamed: 'Cases and Notes'.
  publicForms := self categoryNamed: 'Public forms'.
  secretForms := self categoryNamed: 'Secret forms'.
  permissionW := (self newPermissionNamed: 'Permission to write')
    addCategory: writerUsers;
    setDefaultAccess: Q2Permission write;
    setCategories: {casesAndNotes} for: Q2Case;
    setCategories: {casesAndNotes} for: Q2Note.
  permissionR := (self newPermissionNamed: 'Permission to read')
    addCategory: readerUsers;
    setDefaultAccess: Q2Permission read;
    setWriteFor: publicForms.
  permissionT := (self newPermissionNamed: 'Permission for testing')
    addCategory: testUsers;
    setDefaultAccess: Q2Permission read;
    setWriteFor: casesAndNotes;
    setNoneFor: secretForms;
    setWriteFor: publicForms;
    setCategories: {casesAndNotes} for: Q2Case;
    setCategories: {casesAndNotes} for: Q2Note.
  systemUserPerm := (self newPermissionNamed: 'System user permission')
    addCategory: (self categoryNamed: 'System user');
    setDefaultAccess: Q2Permission write;
    setCategories: {casesAndNotes} for: Q2Case;
    setCategories: {casesAndNotes} for: Q2Note