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
  form newImage
    label: '';
    withSelector: #'image'.
  form newText
    label: 'Title';
    withSelector: #'subject'.
  form newText
    label: 'Process';
    withSelector: #'processName'.
  form newAge
    label: 'Created';
    withSelector: #'ageInSeconds'.
  form newAge
    label: 'Modified';
    withSelector: #'ageUnModifiedInSeconds'.
  self defaultTableCaseForm: form.
  form addCategory: (self categoryNamed: 'Public forms').
  form := self newFormNamed: 'Default case basics'.
  form label: 'Overview'.
  form newText
    label: 'Title';
    withSelector: #'subject';
    description: 'Describing the case in a single sentence.'.
  form newImage
    label: 'Image';
    withSelector: #'image'.
  form newAssociation
    label: 'Responsible';
    withSelector: #'responsibleUserAndRole';
    description: 'The user currently responsible for the case.'.
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