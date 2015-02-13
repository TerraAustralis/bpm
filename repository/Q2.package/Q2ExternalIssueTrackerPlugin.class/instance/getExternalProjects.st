actions
getExternalProjects
	| obj token user |
	user := self session currentUser.
	[token := self login: user.
	obj := Q2Object callServer: 'getProjects' with: {{#in0.  token}} on: 'localhost' port: 8080 uri: '/rpc/soap/jirasoapservice-v2' returnValue: false.] on: Exception do:[:ex | obj := nil. Q2Log warn: ex asString].
	Q2Log debug: user asString, ': ', obj asString.
	^obj ifNotNil: [obj resolvedHrefs] ifNil:[#()]
	"Q2ExternalIssueTrackerPlugIn new getExternalProjects"