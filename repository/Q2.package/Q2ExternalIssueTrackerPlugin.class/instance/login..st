actions
login: user
	^Q2Object callServer: 'login' with: {{#in0. user name}. {#in1. user password}} on: 'localhost' port: 8080 uri: '/rpc/soap/jirasoapservice-v2'.