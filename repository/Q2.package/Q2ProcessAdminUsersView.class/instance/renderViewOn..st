rendering
renderViewOn: html
  html label: 'Number of users' data: process importedUsers size asString.
  html
    form: [ 
      html
        label: 'Users without access'
        field: [ :id | 
          html multiSelect
            id: id;
            size: 10;
            list: process realUsersWithoutAccess;
            selected: selectedWithoutAccess;
            callback: [ :selectedWithout | selectedWithoutAccess := selectedWithout ].
          html
            button: 'Give access'
            callback: [ self addAccess: selectedWithoutAccess ]
            tooltip: 'Make the process accessible to the users' ].
      html horizontalRule.
      html
        label: 'Users with access'
        field: [ :id | 
          html multiSelect
            id: id;
            size: 10;
            list: process realUsersWithAccess;
            selected: selectedWithAccess;
            callback: [ :selectedWith | selectedWithAccess := selectedWith ].
          html
            button: 'Remove access'
            callback: [ self removeAccess: selectedWithAccess ]
            tooltip: 'Remove the process from the users'.
          html
            button: 'Add administrators'
            callback: [ self addAdministrators: selectedWithAccess ]
            tooltip: 'Add the users as process administrators' ].
      html horizontalRule.
      html
        label: 'Administrators'
        field: [ :id | 
          html multiSelect
            id: id;
            size: 10;
            list: process administrators;
            selected: selectedAdministrators;
            callback: [ :selectedAdmins | selectedAdministrators := selectedAdmins ].
          html
            button: 'Remove administrators'
            callback: [ self removeAdministrators: selectedAdministrators ]
            tooltip: 'Remove the users as process administrators' ] ]