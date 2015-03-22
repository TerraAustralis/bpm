initialize-release
initializeForms
  "Create the three base forms that exist out of the box."

  | form |
  form := self newFormNamed: 'Default create case'.
  form label: 'Create case'.
  form newSelection
    label: 'Source';
    useCompletion: true;
    withSelector: #'source';
    description:
        'The person that originated the case, normally the same person that is entering the case.'.
  form newText
    label: 'Title';
    withSelector: #'subject';
    description: 'The display title.';
    large.
  form newText
    label: 'Description';
    multiline: true;
    withSelector: #'description';
    description: 'A short description or byline displayed along with the title'.
  form newAttachments
    label: 'Attachments';
    withSelector: #'attachments';
    description: 'Add or remove attached files to the case'.
  self defaultCreateCaseForm: form.
  form addCategory: (self categoryNamed: 'Public forms').
  form := self newFormNamed: 'Default case basics'.
  form label: 'Default form for showing cases in a table'.
  form newCaseId
    label: 'Id';
    withSelector: #'name'.
  form newText
    label: 'Status';
    withSelector: #'status'.
  form newText
    label: 'Stage';
    withSelector: #'stage'.
  form newText
    label: 'Process';
    withSelector: #'processName'.
  form newText
    label: 'Owner';
    withSelector: #'owner'.
  form newText
    label: 'Reporter';
    withSelector: #'reporter'.
  form newText
    label: 'Responsible';
    withSelector: #'responsible'.
  form newText
    label: 'Title';
    withSelector: #'subject'.
  form newAge
    label: 'Created';
    withSelector: #'ageInSeconds'.
  form newAge
    label: 'Modified';
    withSelector: #'ageUnModifiedInSeconds'.
  self defaultTableCaseForm: form.
  form addCategory: (self categoryNamed: 'Public forms').
  form := self newFormNamed: 'Default case basics'.
  form label: 'Case basics'.
  form newText
    label: 'Current stage';
    withSelector: #'stage';
    description:
        'The current stage for this case in the workflow of this process.';
    readOnly: true.
  form newText
    label: 'Owner';
    withSelector: #'owner';
    description: 'The owner of the case - typically the user who created it.';
    readOnly: true.
  form newText
    label: 'Reporter';
    withSelector: #'reporter';
    description: 'The user that reported the case to the system.';
    readOnly: true.
  form newAssociation
    label: 'Responsible';
    withSelector: #'responsibleUserAndRole';
    description: 'The user currently responsible for the case.'.
  form newText
    label: 'Title';
    withSelector: #'subject';
    description: 'Describing the case in a single sentence.'.
  form newText
    label: 'Description';
    multiline: true;
    withSelector: #'description';
    description: 'Describe the case in your own words.'.
  form newRoleList
    label: 'Roles';
    withSelector: #'usersAndRoles';
    description: 'Add or remove persons to have certain roles in the case.'.
  form newAttachments
    label: 'Attachments';
    withSelector: #'attachments';
    description: 'Add or remove attached files to the case'.
  form newLinkList
    label: 'Incoming links';
    withSelector: #'linksIn';
    readOnly: true;
    description: 'Add or remove links to other cases.'.
  form newLinkList
    label: 'Outgoing links';
    withSelector: #'linksOut';
    description: 'Add or remove links to other cases.'.
  self defaultModifyCaseForm: form.
  self defaultCreateCaseForm editForm: form.
  form addCategory: (self categoryNamed: 'Public forms')