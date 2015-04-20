sample
loadNextroundPermissions
  | members businesses scalingGuides assessors helpDeskStaff publicForms adminForms notes permissionToRead permissionToWrite systemUserPerm |
  members := self categoryNamed: 'Member'.
  businesses := self categoryNamed: 'Business'.
  scalingGuides := self categoryNamed: 'Scaling Guide'.
  assessors := self categoryNamed: 'Assessor'.
  helpDeskStaff := self categoryNamed: 'Help Desk'.
  publicForms := self categoryNamed: 'Public Forms'.
  adminForms := self categoryNamed: 'Admin forms'.
  notes := self categoryNamed: 'Notes'.
  permissionToRead := (self newPermissionNamed: 'Permission to read')
    addCategory: members;
    setDefaultAccess: Q2Permission read;
    setCategories: {notes} for: Q2Note;
    setNoneFor: adminForms.
  permissionToWrite := (self newPermissionNamed: 'Permission to write')
    addCategory: members;
    setDefaultAccess: Q2Permission write;
    setCategories: {notes} for: Q2Note;
    setNoneFor: adminForms.
  systemUserPerm := (self newPermissionNamed: 'System user permission')
    addCategory: (self categoryNamed: 'System user');
    setDefaultAccess: Q2Permission write;
    setCategories: {notes} for: Q2Note