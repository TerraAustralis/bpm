navigation
loggedInNavigation
  "This is where we build the navigation that is rendered to the left."

  | myview userSection createCase |
  navigation := Q2Navigation divClass: 'vertmenu'.
  self currentUser isReporter
    ifTrue: [ 
      userSection := navigation
        heading: [ 'Member: ' , self currentUser name ]
        description: 'The user you are logged in as'.
      userSection add: (createCase := Q2CreateCase parent: self).
      userSection add: (Q2Information parent: self).
      userSection
        addAction: [ self logout ]
        label: 'Logout'
        description: 'Logout from the system'.	"self addHelp."
      navigation default: createCase ]
    ifFalse: [ 
      userSection := navigation
        heading: [ 'Member: ' , self currentUser name ]
        description: 'Personal view, filters, subscriptions and settings'.
      userSection
        add: (myview := Q2UserCentralView parent: self);
        add: (viewProcesses := Q2ProcessOverview parent: self);
        add: [ 
              "		add: [Q2Filters parent: self] label: 'Filters' description: 'Saved logical queries for retrieving specific cases';"
              Q2SubscriptionsView parent: self ]
          label: 'Subscriptions'
          description: 'Triggers for retrieving email when events occur';
        add: [ Q2UserView parent: self ]
          label: 'Settings'
          description: 'Personal settings for using the system';
        add: [ Q2ReportsView parent: self ]
          label: 'Reports'
          description: 'Create and view reports.'.	"userSection
        add: [ Q2StatisticsView parent: self ]
        label: 'Statistics'
        description: 'Display usage statistics'."	"self isMirrorOwner
          ifTrue: [ 
             userSection
              add: [ Q2MirrorSync parent: self ]
              label: 'Mirror sync'
              description: 'Synchronize this mirror with the master server' ]."
      userSection
        addAction: [ self logout ]
        label: 'Logout'
        description: 'Logout from the system'.
      casesSection := navigation
        heading: 'Cases'
        description: 'Add, view and modify cases'.
      casesSection
        add: [ Q2CreateCase parent: self ]
          label: 'Create case'
          description: 'Add a case to the system';
        add: [ Q2ViewCases parent: self ]
          label: 'View cases'
          description: 'View, search and edit all available cases'.	"
		add: [Q2CaseLists parent: self]."	"	(navigation heading: 'Analysis'
				description: 'Reports and statistics')
				add: (Q2CreateReport parent: self);
				add: (Q2Statistics parent: self)."
      self currentUser isAdmin
        ifTrue: [ 
          (navigation
            heading: 'Global admin'
            description:
              'Functions available since you are a system administrator')
            add: [ Q2AdminUsersView parent: self ]
              label: 'Users'
              description: 'Manage the users in the system';
            add: [ Q2ProcessAdminUsersView parent: self ]
              label: 'Process users'
              description: 'Manage the user access to the processes';
            add: [ Q2AdminConsole parent: self ]
              label: 'Admin console'
              description: 'Run code on server. Be careful.';
            add: [ Q2SchedulerView parent: self ]
              label: 'Services'
              description: 'Start and stop services';
            add: [ 
                  "add: [Q2IniFileView parent: self] label: 'Ini File' description: 'Lets you edit various initial Gjallar settings';"
                  Q2GlobalPluginsAdminView parent: self ]
              label: 'Plugins'
              description: 'Lets you start or stop global plugins';
            add: [ 
                  "add: [Q2ModelSettingsView parent: self] label: 'Settings' description: 'Review and change global settings';"
                  (Q2AdminFormsView parent: self) formsModel: self model ]
              label: 'Forms'
              description: 'Edit globally defined forms'	"	add: nil
							label: 'Users'
							description: 'Manage users in the system';
						add: nil
							label: 'Processes'
							description: 'Manage processes in the system';
						add: (Q2Debug parent: self) label: 'Mirrors' description: 'Build mirrors';"	"	add: (Q2MirrorsEditor parent: self);	"	"	add: nil
							label: 'Globals'
							description: 'Manage the objects in the global scope';" ].
      (self currentUser isProcessAdmin or: [ self currentUser isFullAccessUser ])
        ifTrue: [ 
          (navigation
            heading: 'Process admin'
            description:
              'Functions available since you are a process administrator')
            add: [ Q2ProcessAdminUsersView parent: self ]
              label: 'Process users'
              description: 'Manage the user access to the processes';
            add: [ Q2ProcessAdminSubscriptionsView parent: self ]
              label: 'Process subscriptions'
              description:
                'Process mandatory triggers for retrieving email when events occur';
            add: [ Q2ProcessAdminPluginsView parent: self ]
              label: 'Plugins'
              description: 'Start and stop plugins';
            add: [ Q2ProcessAdminFormsView parent: self ]
              label: 'Forms'
              description: 'Edit process forms';
            add: [ Q2ProcessAdminConsole parent: self ]
              label: 'Process console'
              description: 'Run scripts in server. Be careful'	"	add: nil
							label: 'Categories'
							description: 'Manage the categories in the process';
						add: nil
							label: 'Forms'
							description: 'Manage the forms in the process';" ].
      self addHelp.
      navigation default: myview ].
  initialRequest ifNotNil: [ self handleInitialRequest ]