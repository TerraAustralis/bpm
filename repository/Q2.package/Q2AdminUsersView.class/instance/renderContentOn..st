rendering
renderContentOn: html
  super renderContentOn: html.
  userList := self userList asSortedCollection.
  html label: 'Number of users total' data: realUserList size asString.
  (selectedUser isNil or: [ (userList includes: selectedUser) not ])
    ifTrue: [ self selectedUser: (userList ifEmpty: [ nil ] ifNotEmpty: [ userList first ]) ].
  selectedUser
    ifNil: [ editor clear ]
    ifNotNil: [ 
      selectedUser == editor target
        ifFalse: [ self loadEditor ] ].
  html
    form: [ 
      html
        label: 'Select user subset'
        field: [ :id | 
          html select
            id: id;
            size: 1;
            onChange: 'submit()';
            list: userSubsets;
            selected: selectedSubset;
            callback: [ :selected | selectedSubset := selected ] ]
        tooltip: 'Select the subset of users to show in the menu below'.
      html
        label: 'Select user to edit'
        field: [ :id | 
          html select
            id: id;
            size: 1;
            onChange: 'submit()';
            list: userList;
            selected: selectedUser;
            callback: [ :selected | self selectedUser: selected ] ]
        tooltip: 'Select the user you wish to edit' ].
  html horizontalRule.
  html render: editor