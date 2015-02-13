initialize-release
renderOn: html component: comp
	"Add a button for a random move, if there are transitions available.
	Note that we can not remember the plugin component in an instvar
	because the plugin is persistent. Well, we could - but then we would
	need to mark it as transient using #maTransientVariables."

	| case button externalProjects parent |
	case := comp parent case.
	parent := comp parent.
	html label: 'Create a linked case in Jira'
		field: [:iid | externalProjects := self getExternalProjects.
			externalProjects ifNotEmpty: [
				html select id: iid; size: 1;
				list: externalProjects;
				labels: [:tr | tr displayString ]; selected: nil;
				callback: [:value | selectedProject := value].
			] ifEmpty: [
				html textInput id: iid; size: 12;
				callback: [:value | selectedProject := value]
			].
			button := html submitButton.
			button
				callback: [| currentTab |
					currentTab := parent editor selectedTab.
					self createExternalCase: case in: selectedProject.
					parent case: case.
					parent editor selectTab: currentTab]; 
				text: 'Create Jira case']
		tooltip: 'Create a case in Jira.'