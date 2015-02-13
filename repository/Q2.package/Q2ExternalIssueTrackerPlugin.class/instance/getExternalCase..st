actions
getExternalCase: anId
	| obj token |
	token := Q2Object callServer: 'login' with: {{#in0. 'magnus'}. {#in1. 'magnus'}} on: 'localhost' port: 8080 uri: '/rpc/soap/jirasoapservice-v2'.
	obj := Q2Object callServer: 'getIssue' with: {{#in0.  token}. {#in1. anId}} on: 'localhost' port: 8080 uri: '/rpc/soap/jirasoapservice-v2' returnValue: false.
	^obj
	"Q2ExternalIssueTrackerPlugIn new getExternalCase: 'TST-89'"